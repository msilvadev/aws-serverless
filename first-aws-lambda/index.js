exports.handler = async (event) => {
    const {num1, num2} = event.queryStringParameters
    const response = {
        statusCode: 200,
        body: `A soma é ${parseInt(num1) + parseInt(num2)}`,
    };
    return response;
};
