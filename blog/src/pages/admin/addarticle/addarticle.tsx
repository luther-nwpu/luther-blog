import * as React from 'react'
import { GET } from '@lib/helper'
import './addarticle.scss'
import {Editor} from '@components'
export class AddArticle extends React.Component {
  public constructor(props: any) {
    super(props)
  }
  public async getAllArticles() {
    const res = await GET('/blog/getAllArticles')
    console.log(res)
  }
  public render() {
    return (
      <div className="App">
        <Editor></Editor>
      </div>
    )
  }
}
