async function handler(event, context) {
    console.log('Env...', JSON.stringify(process.env, null, 2))
    console.log('Event...', JSON.stringify(event, null, 2))

    return {
        hello: 'dev'
    }
}

module.exports = {
    handler
}