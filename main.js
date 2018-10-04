function onReady() {
  const langSelect = document.getElementById("langSelect");
  langSelect.onchange = function() {
    onChange(langSelect.value);
  };

  onChange("seeds/bash_seed.sh");
}

function onChange(seed) {
  fetch(seed)
    .then(function(response) {
      response.text().then(function(text) {
        var seedElement = document.getElementById("seedScript");
        seedElement.textContent = text;
        document.getElementById("downloadButton").href = seed;
        hljs.highlightBlock(seedElement);
      });
    })
    .catch(function(error) {
      console.error("Seed script request failed.", JSON.stringify(error));
    });
}

function copyToClipboard() {
  // https://stackoverflow.com/questions/47931843/javascript-copy-to-clipboard-not-working

  const element = document.getElementById('seedScript')
  let range, selection, worked;

  if (document.body.createTextRange) {
    range = document.body.createTextRange();
    range.moveToElementText(element);
    range.select();
  } else if (window.getSelection) {
    selection = window.getSelection();
    range = document.createRange();
    range.selectNodeContents(element);
    selection.removeAllRanges();
    selection.addRange(range);
  }

  document.execCommand("copy");
}

onReady();
