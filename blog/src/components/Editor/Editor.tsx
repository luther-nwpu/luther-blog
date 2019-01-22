import 'braft-editor/dist/index.css'
import React from 'react'
import BraftEditor from 'braft-editor'
interface Props {
  content: BraftEditor
}
export class Editor extends React.Component<Props, {}> {

  constructor(props) {
    super(props)
    this.state = { editorState: props.content }
  }

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