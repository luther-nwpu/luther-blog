import { createHash } from 'crypto'
import * as fs from 'fs'
import * as path from 'path'

/**
 * create sha256 for data
 * @param {string} data
 */
export function sha256 (...data: string[]) {
    const hash = createHash('sha256')

    for (const block of data) {
        hash.update(block)
    }

    return hash.digest('hex')
}

/**
 * create sha1 for data
 * @param {string} data
 */
export function sha1 (data: string) {
    return createHash('sha1').update(data).digest('hex')
}

export function md5 (data: string) {
    return createHash('md5').update(data).digest('hex')
}

/**
 * tryCatch return Promise<[T, Error]>
 * @param {Promise<T>} promise
 */
export async function tryCatch<T, E = Error> (promise: any): Promise<[T, E]> {
    try {
        const ret = await promise
        return [ret, null as E]
    } catch (e) {
        return [null as T, e]
    }
}

export function syncTryCatch <T, E = Error> (functionCall: any): [T, E] {
    try {
        const ret = functionCall
        return [ret, null as E]
    } catch (e) {
        return [null as T, e]
    }
}

export function createError (errMessage: any, status: number, userMessage?: string) {
    let error
    if (typeof errMessage === 'string') {
        error = new Error(errMessage)
    } else if (typeof errMessage === 'object') {
        error = errMessage
    } else {
        throw new Error('类型错误，错误查询请见util/createError')
    }
    error.status = status
    error.userMessage = userMessage
    return error
}

/**
 * 同步创建文件目录
 * @param  {string} dirname 目录绝对地址
 * @return {boolean}        创建目录结果
 */
export function mkdirsSync (dirname) {
    if (fs.existsSync(dirname)) {
        return true
    } else {
        if (mkdirsSync(path.dirname(dirname))) {
            fs.mkdirSync(dirname)
            return true
        }
    }
}
