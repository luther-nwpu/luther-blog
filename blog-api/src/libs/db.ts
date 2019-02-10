import { MYSQL } from '@config'
import * as knex from 'knex'
import * as bookshelf from 'bookshelf'

export const db = knex({
    client: 'mysql',
    connection: {
        host: MYSQL.HOST,
        port: MYSQL.PORT,
        user: MYSQL.USER,
        password: MYSQL.PASS,
        database: MYSQL.DB,
        charset: MYSQL.CHAR,
        timezone: '+08:00',
        socketPath: '/var/lib/mysql/mysql.sock'
    }
})

export default bookshelf(db)
