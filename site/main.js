function onReady() {
    const langSelect = document.getElementById("langSelect");
    langSelect.onchange = function() {
        onChange(langSelect.value);
    }

    onChange("seeds/bash_seed.sh");
}

function onChange(source) {
    fetch(source)
    .then(function(response) {
        response.text().then(function(text) {
            document.getElementById("source").value = text;
        });

    })
    .catch(function(error) {
        console.error("Source request failed.", error.statusText);
    });
}

onReady();
