import * as koaRouter from 'koa-router'
import * as fs from 'fs'
const router = new koaRouter()

router.prefix('/admin')

router.post('/upload', async (ctx, next) => {
    const file = ctx.request.files.file    // 获取上传文件
    console.log(file)
    const reader = fs.createReadStream(file.path)    // 创建可读流
    const ext = file.name.split('.').pop()        // 获取上传文件扩展名
    const upStream = fs.createWriteStream(`upload/666.${ext}`)        // 创建可写流
    reader.pipe(upStream)    // 可读流通过管道写入可写流
    return ctx.body = '上传成功'
})

router.post('/commitArticle', async (ctx, next) => {
    return ctx.body = { 'text': '你好' }
})

export default router
