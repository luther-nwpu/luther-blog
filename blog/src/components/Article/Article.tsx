import * as React from 'react'
import { Post } from '@lib/helper'
import './Article.scss'
interface IProps {
    id: number
}
interface ArticleDetail {
    title: string,
    description: string,
    content: string,
    update_at: string,
    picture: string
}
interface IState {
    articleDetail: ArticleDetail
}
export class Article extends React.Component<IProps, IState> {
    articleDetail: ArticleDetail = {
        title: '',
        description: '',
        content: '',
        update_at: '',
        picture: ''
    }
    state: IState = {
        articleDetail: this.articleDetail
    }
    constructor(props: any) {
        super(props)
        this.getArticleById()
    }
    public async getArticleById() {
        const res = await Post('/common/getArticleById', {
            article_id: this.props.id
        })
        const result = res.result
        this.setState({
            articleDetail: {
                title: result.title,
                description: result.description,
                update_at: result.update_at,
                content: result.content,
                picture: result.pictire_url
            } 
        })
    }
    public render() {
        return (
            <div className="article-app">
            6666
                <div className="article-app-title">
                    {this.state.articleDetail.title}
                </div>
                <div className="">
                    {this.state.articleDetail.description}
                </div>
                <div>
                    {this.state.articleDetail.update_at}
                </div>
                <div>
                    {this.state.articleDetail.content}
                </div>
            </div>
        )
    }
}