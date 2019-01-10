import 'braft-editor/dist/index.css'
import React from 'react'
import BraftEditor from 'braft-editor'

export class Home extends React.Component {

  public state = {
    editorState: BraftEditor.createEditorState(null)
  }

  render () {
    return (
      <BraftEditor value={this.state.editorState} onChange={this.handleChange}/>
    )
  }

  handleChange = (editorState) => {
    this.setState({ editorState })
    console.log(editorState)
  }

}