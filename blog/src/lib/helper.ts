/**
 * tryCatch return Promise<[T, Error]>
 * @param {Promise<T>} promise
 */
export async function tryCatch(promise: any) {
  try {
    const ret = await promise
    return [ret, null]
  } catch (e) {
    return [null, e]
  }
}

export function Post(url: string, params: any): Promise<any> {
  return new Promise((resolve, reject) => {
    fetch(url, {
      method: 'POST',
      body: JSON.stringify(params),
    }).then((response) => response.json())
      .then((data) => resolve(data))
      .catch((err) => reject(err))
  })
}

export async function GET(url: string): Promise<any> {
  return new Promise<any>((resolve, reject) => {
    fetch(url, {
      method: 'GET',
    }).then((response) => response.json())
      .then((data) => resolve(data))
      .catch((err) => reject(err))
  })
}
