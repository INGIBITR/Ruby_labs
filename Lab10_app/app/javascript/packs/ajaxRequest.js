$(document).ready(() => {
    $('#btn').click((e) => {
        e.preventDefault();
        sendAjaxRequest('calculate.json');

    });
});

const sendAjaxRequest = (url) => {
    $.ajax({
        url: `${url}?x=${$('#numberInput').val()}`,
        type: 'GET',
        success: (response) => {
            if (Array.isArray(response.result)) {
                result = `


    <table border="1">
        <tr>
            <th>Этап</th>
            <th>Значение</th>
            <th> Cтатус </th>
        </tr>
                        ${response.result.map((v, i) => {
                    if (i + 1 == response.result.length)
                        return `<tr>
                            <td>${i}</td>
                            <td id= "1">${v}</td>
                            <td> found it </td>
                            </tr>`
                    else return `<tr>
                        <td>${i}</td>
                        <td>${v}</td>
                        <td> not yet </td>
                        </tr>`}
                ).join('')}
    </table>
`;
                $('#result').html(result);
            } else {
                $('#result').html(response.result);
            }
        }
    })
}