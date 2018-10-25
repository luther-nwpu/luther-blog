import * as React from 'react'
import ReactQuill from 'react-quill'
import 'react-quill/dist/quill.snow.css'
interface IState {
    text: string
  }
export class Editor extends React.Component<any> {
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
      this.props.handleEditorChange(value)
    }
    public render() {
      return (
        <div className="page">
          <ReactQuill className="editor" theme="snow" value={this.state.text} onChange={this.handleChange} modules={this.modules} formats={this.formats}/>
        </div >
      )
    }
  }
