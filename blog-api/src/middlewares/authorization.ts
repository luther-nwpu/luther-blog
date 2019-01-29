import createJwtMiddleware from '@libs/jwt'
import { DEBUG_NAMESPACE, JWT_SECRET } from '@config'

export const jwtMiddleware = [
    createJwtMiddleware({
        secret: JWT_SECRET,
        bearer: '$user',
        debugNamespace: DEBUG_NAMESPACE.JWT,
        ignores: [
            'POST:/admin/upload',
            'GET:/blog/getAllArticles',
            'POST:/admin/commitArticle',
            'POST:/admin/addArticle'
        ]
    }),

    /**
     * query user from db
     */
    async function (ctx, next) {
        return next()
    }
]
