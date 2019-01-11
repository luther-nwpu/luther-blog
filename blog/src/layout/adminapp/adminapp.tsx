import * as React from 'react'
import {Route, Switch} from 'react-router'
import { Admin } from '@pages'
import './adminapp.css'
export class AdminApp extends React.Component {
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
        <Switch>
          <Route exact={true} path={this.state.match + '/'} component={Admin} />
        </Switch>
      </div>
    )
  }
}