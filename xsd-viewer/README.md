# Xsd-viewer 

- Web page to display nicely the structure of an XSD
- Expandable elements
- Research functionality

## Source of inspiration 
[Github peterraf](https://github.com/peterraf/online-xsd-viewer)  
Splitted code  
- html
- xsd.css
- xsd.js

## Automatically add file into input:file

For automation sake (selenium...), use DataTransfer.files to add specific xsd into input:file  
```javascript
// programmatically add XSD in input filelist
const xsdFileName = "xsd/126-beps13-notification-v1-51-fr.xsd"
loadURLToInputFiled(xsdFileName);

// Use DataTransfer.files to define input.files
function loadURLToInputFiled(url) {
  getImgURL(url, (fileBlob) => {
    let fileName = xsdFileName;
    let file = new File([fileBlob], fileName, { type: "text/xml", lastModified: new Date().getTime() }, 'utf-8');
    let dataTransfer = new DataTransfer();
    dataTransfer.items.add(file);
    document.querySelector('#get_the_file').files = dataTransfer.files;
    document.getElementById("get_the_file").dispatchEvent(new Event("change"));
  })
}
// xmlHTTP return blob respond
function getImgURL(url, callback) {
  var xhr = new XMLHttpRequest();
  xhr.onload = function () {
    callback(xhr.response);
  };
  xhr.open('GET', url);
  xhr.responseType = 'blob';
  xhr.send();
}
```
## Misc

To overcome hardcoded limitation play with 
- canvas size : xsd.js
```javascript 
var nCanvasWidth = 3000; // default was 5000;
var nCanvasHeight = 5000; // default was 5000; // 20000 to big LocalFile
```
- search limitation (100) : xsd-viewer.html  
```html
<tr class="search-result" onclick="SearchResultClicked(99);">
  <td class="xpath" id="SearchResult100">XPath-100</td>
</tr>
<tr class="search-result">
  <td class="xpath" id="TooManyResults">Too many results found</td>
</tr>
```

