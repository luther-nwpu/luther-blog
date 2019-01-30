import * as React from 'react'
import {Home} from '@pages'
import { Route } from 'react-router-dom'
import './App.css'
import { ArticleDetail } from '@pages'
import { Platform } from '@config'
export class App extends React.Component {
  public state = {
    match: '',
  }
  constructor(props: any) {
    super(props)
    this.state = {
      match: props.match.path, 
    }
  }
  public render() {
    return (
      <div className="page">
        <Route exact={true}  path={`${this.state.match}/`} component={Home} />
        <Route path="/article/:id" component={ ArticleDetail } />
      </div>
    )
  }
}
