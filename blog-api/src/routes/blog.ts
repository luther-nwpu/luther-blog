import * as koaRouter from 'koa-router'
import { Article } from '@models'
import { tryCatch } from '@libs/util'

const router = new koaRouter()

router.prefix('/blog')

router.get('/getAllArticles', async (ctx, next) => {
    const [articles, error] = await tryCatch(new Promise((resolve, reject) => {
        new Article().fetch({ withRelated: ['picture'] }).then(function (results) {
            resolve(results)
        })
    }))
    if (error) {
        return ctx.body = { success: false, result: error }
    }
    return ctx.body = { success: true, result: articles }
})

export default router
