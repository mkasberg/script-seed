let seedElement;
const LANGUAGES = {
  'awk': {
      file: 'seeds/awk_seed.awk',
      class: 'awk'
  },
  'bash': {
    file: 'seeds/bash_seed.sh',
    class: 'bash'
  },
  'erlang': {
    file: 'seeds/erlang_seed.erl',
    class: 'erlang'
  },
  'groovy': {
    file: 'seeds/groovy_seed.groovy',
    class: 'groovy'
  },
  'javascript': {
    file: 'seeds/javascript_seed.js',
    class: 'javascript'
  },
  'perl': {
    file: 'seeds/perl_seed.pl',
    class: 'perl'
  },
  'php': {
    file: 'seeds/php_seed.php',
    class: 'php'
  },
  'powershell': {
      file: 'seeds/powershell_seed.ps1',
      class: 'powershell'
  },
  'python': {
    file: 'seeds/python_seed.py',
    class: 'python'
  },
  'ruby': {
    file: 'seeds/ruby_seed.rb',
    class: 'ruby'
  },
  'scala': {
    file: 'seeds/scala_seed.scala',
    class: 'scala'
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
        seedElement.className = `${languageClass} hljs`;
        hljs.highlightBlock(seedElement);

        document.getElementById("downloadButton").href = languageFile;
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

// darkmode script code
const toggle=document.getElementById('toggle-button')
const body=document.getElementsByTagName('body')[0];

toggle.addEventListener('click',()=>{
  changeToDarkMode();
})

function changeToDarkMode(){
  x=sessionStorage['darkmode'];
  if(x=='0'){
    toggle.style="margin-left:25px;"
    sessionStorage['darkmode']=1;
    body.style="background-color:#5b6987;"
    document.getElementById("toggle-container").style="background-color:blue;"
    document.getElementsByTagName('footer')[0].style="background-color:#93c2db;"
  }
  else{
    toggle.style="margin-left:0px;"
    sessionStorage['darkmode']=0;
    body.style="background-color: #dddddd;"
    document.getElementById("toggle-container").style="background-color:grey;"
    document.getElementsByTagName('footer')[0].style="background-color:#999999;"
  }
}

function checkForDarkMode()
{
  x=sessionStorage['darkmode'];
  if(x=='0'){
    toggle.style="margin-left:0px;"
    body.style="background-color: #dddddd;"
    document.getElementById("toggle-container").style="background-color:grey;"
    document.getElementsByTagName('footer')[0].style="background-color:#999999;"
  }
  else{
    toggle.style="margin-left:25px;"
    body.style="background-color:#5b6987;"
    document.getElementById("toggle-container").style="background-color:blue;"
    document.getElementsByTagName('footer')[0].style="background-color:#93c2db;"
  }
}

checkForDarkMode();