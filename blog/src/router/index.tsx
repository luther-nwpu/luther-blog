import * as React from 'react'
import { Router, Switch, Route} from 'react-router'
import { createBrowserHistory } from 'history'
import { Provider } from 'react-redux'
import store from 'store'
import {App, AdminApp} from '@layout'
import {Error} from '@pages'
const history = createBrowserHistory()

class RouterConfig extends React.Component {
  public render() {
    return (
        <Provider store={store}>
            <Router history={history} >
                <Switch>
                    <Route exact={true} path="/" component={App}/>
                    <Route exact={true} path="/admin" component={AdminApp}/>
                    <Route component={Error} />
                </Switch>
            </Router>
        </Provider>
    )
  }
}

export default RouterConfig
