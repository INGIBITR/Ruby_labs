import $ from 'jquery'

function handleResult(event) {
    const [data] = event.detail

    const result = $('#result');
    result.empty()

    $('<table></table>')
        .append('<tr><th>Step</th><th></th></tr>')
        .append(data.map(a => `<tr><td>${a.x}</td><td>${a.xsqr}</td></tr>`))
        .appendTo(result)

    result.append(`<p>Count: <strong>${data.length}</strong></p>`)
}

document.addEventListener('turbolinks:load', () => {
    document.getElementById('form')
        .addEventListener('ajax:success', handleResult)
})
