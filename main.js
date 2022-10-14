let seedElement;
const LANGUAGES = {
    'awk': {
        file: 'seeds/awk_seed.awk',
        class: 'language-awk'
    },
    'bash': {
        file: 'seeds/bash_seed.sh',
        class: 'language-bash'
    },
    'basic': {
        file: 'seeds/basic_seed.bas',
        class: 'language-basic'
    },
    'deno': {
        file: 'seeds/deno_seed.js',
        class: 'language-js'
    },
    'erlang': {
        file: 'seeds/erlang_seed.erl',
        class: 'language-erlang'
    },
    'golang': {
        file: 'seeds/go_seed.go',
        class: 'language-go'
    },
    'groovy': {
        file: 'seeds/groovy_seed.groovy',
        class: 'language-groovy'
    },
    'javascript': {
        file: 'seeds/javascript_seed.js',
        class: 'language-js'
    },
  'julia': {
        file: 'seeds/julia_seed.jl',
        class: 'language-julia'
    },
  'lua': {
        file: 'seeds/lua_seed.lua',
        class: 'language-lua'
    },
    'perl': {
        file: 'seeds/perl_seed.pl',
        class: 'language-perl'
    },
    'php': {
        file: 'seeds/php_seed.php',
        class: 'language-php'
    },
    'powershell': {
        file: 'seeds/powershell_seed.ps1',
        class: 'language-powershell'
    },
    'python': {
        file: 'seeds/python_seed.py',
        class: 'language-python'
    },
    'ruby': {
        file: 'seeds/ruby_seed.rb',
        class: 'language-ruby'
    },
    'scala': {
        file: 'seeds/scala_seed.scala',
        class: 'language-scala'
    },
  'tcl': {
        file: 'seeds/tcl_seed.tcl',
        class: 'language-tcl'
    }
}

function getFileForLanguage(language) {
    return LANGUAGES[language].file;
}

function getClassForLanguage(language) {
    return LANGUAGES[language].class;
}

function onReady() {
    seedElement = document.getElementById("seedScript");

    const langSelect = document.getElementById("langSelect");
    langSelect.onchange = function() {
        onChange(langSelect.value);
    };

    onChange("bash");
}

function onChange(language) {
    let languageFile = getFileForLanguage(language);
    let languageClass = getClassForLanguage(language);

    fetch(languageFile)
        .then(function(response) {
            response.text().then(function(text) {
                seedElement.textContent = text;
                seedElement.className = `${languageClass}`;
                Prism.highlightElement(seedElement);

                document.getElementById("downloadButton").href = languageFile;
            });
        })
        .catch(function(error) {
            console.error("Seed script request failed.", JSON.stringify(error));
        });
}

function copyToClipboard() {
    const element = document.getElementById('seedScript')
    navigator.clipboard.writeText(element.innerText);
}

document.querySelector("#copyButton").addEventListener("click", () => {
  const copyButtonContainer = document.querySelector("#copyButtonContainer");
  const copyButtonIcon = document.querySelector("#copyButton").children[0];

  copyButtonIcon.removeAttribute("class");
  copyButtonIcon.classList.add("fas");
  copyButtonIcon.classList.add("fa-check");

  const div = document.createElement("div");
  div.innerHTML = `
      <div class="toastContainer">
          <p class="toastContainer_message">Copied.</p>
      </div>
  `;
  copyButtonContainer.append(div);
  setTimeout(() => {
    copyButtonContainer.removeChild(div);
    copyButtonIcon.removeAttribute("class");
    copyButtonIcon.classList.add("far");
    copyButtonIcon.classList.add("fa-copy");
  }, 3000);
});

document.getElementById("darkModeSwitch").onclick = function(el) {
    if (el.target.checked) {
        document.body.className = "dark";
        document.getElementById("codeStyle").href = "prismjs/styles/prism-one-dark.css";
    } else {
        document.body.className = "";
        document.getElementById("codeStyle").href = "prismjs/styles/prism-one-light.css";
    }
}

onReady();
