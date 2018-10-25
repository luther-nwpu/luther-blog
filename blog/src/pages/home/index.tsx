import * as React from 'react'
import { GET } from '@lib/helper'
import githubPic from './github.svg'
import ReactQuill from 'react-quill'
import 'react-quill/dist/quill.snow.css'
import './home.css'
interface IState {
  text: string
}
export class Home extends React.Component<IState> {
  public modules = {
    toolbar: [
      [{ header: [1, 2, false] }],
      ['bold', 'italic', 'underline', 'strike', 'blockquote'],
      [{list: 'ordered'}, {list: 'bullet'}, {indent: '-1'}, {indent: '+1'}],
      ['link', 'image'],
      ['clean'],
    ],
  }
  public formats = [
    'header',
    'bold', 'italic', 'underline', 'strike', 'blockquote',
    'list', 'bullet', 'indent',
    'link', 'image',
  ]
  public state: IState = {
    text: '',
  }
  constructor(props: any) {
    super(props)
    this.handleChange = this.handleChange.bind(this)
  }
  public handleChange(value: string) {
    this.setState({ text: value })
  }
  public async getAllArticles() {
    const res = await GET('/blog/getAllArticles')
    console.log(res)
  }
  public render() {

    return (
      <div className="page">
        <img src={githubPic} className=""/>
        <button onClick={this.getAllArticles}>你好</button>
        <ReactQuill className="editor" theme="snow" value={this.state.text} onChange={this.handleChange} modules={this.modules} formats={this.formats}/>
      </div >
    )
  }
}
