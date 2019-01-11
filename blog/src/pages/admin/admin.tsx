import * as React from 'react'
import { GET } from '@lib/helper'
import './admin.scss'
import {ArticleList} from '@components'
export class Admin extends React.Component {
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
        <button> 写文章 </button>
        <div className="articles">
          <ArticleList></ArticleList>
        </div>
      </div>
    )
  }
}
