import * as React from 'react'
import {Home} from '@pages'
import { Route } from 'react-router-dom'
import './App.css'
export class App extends React.Component {
  constructor(props: any) {
    super(props)
  }
  public render() {
    return (
      <div className="page">
        <Route path="/" component={Home} />
      </div>
    )
  }
}
