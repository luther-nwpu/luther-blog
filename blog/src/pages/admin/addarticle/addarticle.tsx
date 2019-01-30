import * as React from 'react'
import { GET,  Post } from '@lib/helper'
import './addArticle.scss'
import {Editor} from '@components'
import { UploadFile } from '../../../components/UploadFile/UploadFile'
import { IResponse } from '@lib/helper'
export class AddArticle extends React.Component {
  public constructor(props: any) {
    super(props)
    this.getAllArticles()
  }
  public state = {
    title: '',
    description: '',
    img: '',
    content: null
  }
  child:any
  public async getAllArticles() {
    const res = await GET('/blog/getAllArticles')
    console.log('6666', res)
  }
  public async save() {
    // const res = await Post('/admin/commitArticle', this.state)
    console.log(this.child.startUpload())
  }
  public changeTitle(event: any) {
    this.setState({title: event.target.value})
  }
  onRef = (ref) => {
    this.child = ref
  }

  public changeDescription(event: any) {
    this.setState({description: event.target.value})
  }
  public handleEditorChange(value: any) {
    this.setState({content: value})
  }
  public handleUploadChange(res: IResponse) {
    this.setState({img: res.result.id}) // 获取img的id
    console.log(this.state.content)
    Post('/admin/commitArticle', {
      title: this.state.title,
      img: this.state.img,
      content: this.state.content.toHtml(),
      description: this.state.description
    })
  }
  public render() {
    return (
      <div className="App">
        <div>文章标题</div><input value={this.state.title} onChange={() => this.changeTitle(event)}></input>
        <div>文章图片</div><UploadFile onRef={this.onRef} afterUpload={(val:IResponse) => this.handleUploadChange(val)}></UploadFile>
        <div>文章描述</div><textarea value={this.state.description} onChange={() => this.changeDescription(event)}></textarea>
        <button onClick={() => this.save()}>保存</button>
        <Editor content = {this.state.content} editorChange={(val:any) => this.handleEditorChange(val)}></Editor>
      </div>
    )
  }
}
