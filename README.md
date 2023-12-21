# javascript
![Avatar](https://github.com/dgucc/sandbox/blob/main/tips/images/avatar.gif)  

[Documentation MDN](https://developer.mozilla.org/fr/)    

[d3js/map/europe for kids](https://htmlpreview.github.io/?https://github.com/dgucc/javascript/blob/main/d3js/map/europe/index.html)  
[d3js/map/world for kids](https://htmlpreview.github.io/?https://github.com/dgucc/javascript/blob/main/d3js/map/world/index.html)  
[wifi_qr_js](https://htmlpreview.github.io/?https://github.com/dgucc/javascript/blob/main/wifi_qr_js/index.html)  
[Xslt](https://github.com/dgucc/javascript/tree/main/xslt/index.html)  
[CSS Live Editable](https://htmlpreview.github.io/?https://github.com/dgucc/javascript/blob/main/CssLiveEditable/index.html)  

---

## Tutorial
[Tutoriel JavaScript](https://grafikart.fr/formations/formation-javascript)  

## VSCode

### Configuration

[Configuration Visual Studio Code](https://grafikart.fr/tutoriels/vscode-settings-2096)  
<Ctrl+Shift+P> : Preferences  
Edit /home/<user>/.config/Code/User/settings.json :

```json
{
  "workbench.startupEditor": "none", // On ne veut pas une page d'accueil chargée
  "editor.minimap.enabled": false,
  "breadcrumbs.enabled": false,
  // -- Sidebar
  "workbench.tree.indent": 20, // Indente plus pour plus de clarté dans la sidebar
  "workbench.tree.renderIndentGuides": "always",
  // -- Code
  "editor.occurrencesHighlight": false, 
  "editor.renderWhitespace": "trailing", // On ne veut pas laisser d'espace en fin de ligne

  // Thème
  "editor.fontFamily": "'JetBrains Mono', 'Fira Code', 'Operator Mono Lig', monospace",
  "editor.fontLigatures": true,
  "editor.fontSize": 11,
//   "editor.lineHeight": 28,
  "workbench.colorTheme": "Tokyo Night",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.colorCustomizations": {
    "[Tokyo Night]": {
      "editor.selectionBackground": "#3D59A1",
      "editor.selectionHighlightBackground": "#3D59A1"
    },
  },

  // Ergonomie
  "editor.wordWrap": "on",
  "editor.suggest.insertMode": "replace", // L'autocomplétion remplace le mot en cours
  "editor.acceptSuggestionOnCommitCharacter": false, // Evite que l'autocomplétion soit accepté lors d'un . par exemple
  "editor.formatOnSave": false,
  "editor.formatOnPaste": false,
  "editor.linkedEditing": true, // Quand on change un élément HTML, change la balise fermante
  "explorer.autoReveal": false,
  "explorer.confirmDragAndDrop": false,
  "workbench.editor.enablePreview": false, // Un clic sur un fichier l'ouvre
  "emmet.triggerExpansionOnTab": true, 
  // Fichiers
  "files.autoSave": "onFocusChange",
  "files.defaultLanguage": "markdown",
  "files.exclude": {
    "**/.idea": true
  },
  // Languages
  "javascript.preferences.importModuleSpecifierEnding": "js",
  "typescript.preferences.importModuleSpecifierEnding": "js",
  // Formatters
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[html]": {
    "editor.defaultFormatter": "vscode.html-language-features"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },

  // Extensions
  "liveServer.settings.donotVerifyTags": true,
  "gitlens.codeLens.enabled": false,
  "gitlens.currentLine.enabled": false,
  "editor.unicodeHighlight.nonBasicASCII": false,
  "omnisharp.autoStart": true,
  "omnisharp.enableEditorConfigSupport": false,
  "editor.codeLens": false,
  "editor.mouseWheelZoom": true,
  "editor.tabSize": 3,
  "git.enableSmartCommit": true,
  "RainbowBrackets.depreciation-notice": false,
  "[python]": {
    "editor.formatOnType": true
  }
}
```
### Shortcuts
Open Terminal : <Ctrl+J>  

### Enable jquery intellisense

jsconfig.json :  

```json
{
    "typeAcquisition": {
        "include": [
            "jquery"
        ]
    }
}
```
