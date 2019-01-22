import * as React from 'react'
import { GET,  Post } from '@lib/helper'
import './addarticle.scss'
import {Editor} from '@components'
import { UploadFile } from '../../../components/UploadFile/UploadFile'
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
  public async getAllArticles() {
    const res = await GET('/blog/getAllArticles')
    console.log('6666', res)
  }
  public  async save() {
    console.log(this.state)
  }
  public changeTitle(event:any) {
    this.setState({title: event.target.value})
  }
  public changeDescription(event: any) {
    this.setState({description: event.target.value})
  }
  public render() {
    return (
      <div className="App">
        <div>文章标题</div><input value={this.state.title} onChange={() => this.changeTitle(event)}></input>
        <div>文章图片</div><UploadFile></UploadFile>
        <div>文章描述</div><textarea value={this.state.description} onChange={() => this.changeDescription(event)}></textarea>
        <button onClick={() => this.save()}>保存</button>
        <Editor></Editor>
      </div>
    )
  }
}
