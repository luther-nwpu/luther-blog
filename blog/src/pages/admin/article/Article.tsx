import * as React from 'react'
import { GET, Post } from '@lib/helper'

export class Article extends React.Component {
  public state = {
    text: '',
  }
  public constructor(props: any) {
    super(props)
    this.handleEditorChange = this.handleEditorChange.bind(this)
    this.commitArticle = this.commitArticle.bind(this)
  }
  public async getAllArticles() {
    const res = await GET('/blog/getAllArticles')
    console.log(res)
  }
  public UploadFile() {
    console.log(11111111)
  }
  public handleEditorChange(text: any) {
    this.setState({text})
  }
  public async commitArticle() {
    console.log(this.state.text)
    await Post('/admin/commitArticle', {text: this.state.text})
  }
  public render() {
    return (
      <div className="App">
        <button onClick={this.commitArticle}> 发布文章</button>
      </div >
    )
  }
}
