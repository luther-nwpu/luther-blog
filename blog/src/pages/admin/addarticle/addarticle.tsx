import * as React from 'react'
import { GET } from '@lib/helper'
import './addarticle.scss'
import {Editor} from '@components'
import { UploadFile } from '../../../components/UploadFile/UploadFile'
export class AddArticle extends React.Component {
  public constructor(props: any) {
    super(props)
  }
  public async getAllArticles() {
    const res = await GET('/blog/getAllArticles')
    console.log(res)
  }
  public save() {
    console.log('我喜欢你')
  }
  public render() {
    return (
      <div className="App">
        <div>文章标题</div><input></input>
        <div>文章图片</div><UploadFile></UploadFile>
        <div>文章描述</div><textarea></textarea>
        <button onClick={this.save}>保存</button>
        <Editor></Editor>
      </div>
    )
  }
}
