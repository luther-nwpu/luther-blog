// This is a template to demonstrate the existing functions
// you can use in a global data-source script. All functions and
// global variables you define here will be available for the
// all query scripts.
//
// Feel free to delete any function you don't use.
//
// you can process scripts via
//   scriptHelper.eval("println ('Hello World');", "ECMAscript");
//
// or your can load your own ECMA/JavaScript files and execute them via
//   scriptHelper.evalFile ("/your/file/here.js", "ECMAscript");
//
// both inline scripts and files will be executed in the global context -
// any function or variable defined there will be available globally.
//
// The following global variables exist by default:
//    resourceManager : The ResourceManager can be used to load files
//    contextKey      : ResourceKey the context key points to the prpt-bundle
//    dataFactory     : The current datafactory instance
//    configuration   : The current report configuration
//    resourceBundleFactory : Access to translations and locale information
//    scriptHelper    : Allows to load and evaluate other scripts

function initQuery()
{
  // place all initialization logic here. This is the right space to prepare complex lookup tables or
  // to fill global variables.

  // this method is called once during initialization. This function will
  // only be called when the associated query is used.
}

function shutdownQuery()
{
  // place all shutdown logic here. If you use any persistent resources like files or connections
  // make sure you close them here.

  // this method is called once during the data-source shut-down. It
  // will only be called if the associated query has been fired.
}

function computeQuery (query, queryName, dataRow)
{ 
  var dataCenterId =  dataRow.get("dataCenterId");
  var dataCenterIds =  dataRow.get("datacenterids");
  var projectName = dataRow.get("proName");
  var poolUUID =  dataRow.get("poolUUID");
  var state =  dataRow.get("state");
  var vmName =  dataRow.get("vmName");
 query = "select re.uuid,re.resource_pool_uuid,re.clusterName,'虚拟机' type,re.state,re.projectid project_id,re.project project_name, "
	+"re.username,re.account account_name,re.host_name phy_host_name,re.hostname,re.ip,re.cpunumber as cpu_number, "
	+"round(avg(re.cpu_usage_avg),2) as cpu_usage_avg,round(max(re.cpu_usage_max),2) as cpu_usage_peak, max(re.network_write_max) as network_write_max, max(re.network_read_max) as network_read_max"
	+"re.memory mem_size,round(avg(re.mem_usage_avg),2) as mem_usage_avg,round(max(re.mem_usage_max),2) as mem_usage_peak, "
	+"re.storage disk_size, round(avg(re.disk_usage_avg),2) as disk_usage_avg,round(max(re.disk_usage_max),2) as disk_usage_peak from ( "
	+"    select vm.uuid,vm.resource_pool_uuid,c.name clusterName,vm.projectid,vm.project,vm.username,vm.account,vm.host_name, "
	+"    (CASE vm.state WHEN 'Starting' THEN '启动中' WHEN 'Running' THEN '运行中' WHEN 'Stopping' THEN '停止中'  "
     +"    WHEN 'Stopped' THEN '已停止' WHEN 'Destroyed' THEN '已销毁' WHEN 'Migrating' THEN '迁移中'  "
     +"    WHEN 'Error' THEN '异常' WHEN 'Upgrading' THEN '变更中' ELSE '未知' END) state, "
	+"	  vm.ip,vm.display_name hostname,vm.cpunumber,vd.cpu_usage_avg,vd.cpu_usage_max,round(vm.memory/1024,0) memory, "
	+"	  vd.mem_usage_avg,vd.mem_usage_max,round(vm.storage/1024,0) storage,vd.disk_usage_avg,vd.disk_usage_max,vd.collect_time  "
	+"	  from vm_host vm "
	+"	  inner join rpt_vm_perform_1day vd on vm.uuid = vd.uuid 	"	
	+"	  inner join cluster c on vm.clusterid = c.uuid	"
	+"	  where (vd.collect_time >= ${startTime} "
	+"	  and vd.collect_time <DATE_SUB(${endTime},INTERVAL -1 DAY) or vd.collect_time is null)	"
	+"	  and vm.projectid like CONCAT('%',${proId},'%') "
	+"    and vm.projectid is not null ";
if(poolUUID != "%"){
	query = query + " and vm.resource_pool_uuid = ${poolUUID}  ";
}
//admin
if(dataCenterIds == null){
    if(dataCenterId != -1){
		query =query+"	and vm.data_center_id like CONCAT('%',${dataCenterId},'%')  ";
	}
}
//not admin: network srevice
if(dataCenterIds != null){
	if(dataCenterId != -1){
		query =query+"	and vm.data_center_id like CONCAT('%',${dataCenterId},'%')  ";
	}
	if(dataCenterId == -1){
		query =query+"	and FIND_IN_SET(vm.data_center_id, ${datacenterids})  ";
	}
} 
if(projectName != null){
	query = query + "    and vm.project like CONCAT('%',${proName},'%')  ";
}
if(state != "%"){
	query = query + "    and vm.state = ${state}  ";
}
if(vmName != null){
	query = query + "    and vm.vm_instance_name  LIKE CONCAT('%',${vmName},'%')  ";
}
  query = query + " ) as re group by re.uuid";
  return query;
}

function computeQueryFields (query, queryName)
{
  // return any additional fields that may affect caching. If you rewrite
  // the query dynamically in the 'computeQuery' function, include all fields
  // that may take part of the query or query computation.
  //
  // if you do not want any caching, return <null>.
  return [];
}

function postProcessResult(query, queryName, dataRow, tableModel)
{
  // optionally post-process the query result. Usually you would not
  // manipulate the given table-model directly, but you can either copy
  // data into a new model or you can wrap it with a custom table-model
  // implementation of your own making.

  // if you discard the original tablemodel in the process, make sure
  // you close it properly or you may leak resources.
  return tableModel;
}
