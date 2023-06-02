
# Insert OpenStreetMap in webpage

[Example](https://github.com/dgucc/javascript/blob/main/openstreetmap/index.html)  

---

# References
[Pas à pas – Insérer une carte OpenStreetMap sur votre site](https://nouvelle-techno.fr/articles/pas-a-pas-inserer-une-carte-openstreetmap-sur-votre-site)  

---

[Using a Downloaded Version of Leaflet](https://leafletjs.com/download.html#using-a-downloaded-version-of-leaflet)  

Inside the archives downloaded from the above links, you will see four things:  

> `leaflet.js` - This is the minified Leaflet JavaScript code.  
> `leaflet-src.js` - This is the readable, unminified Leaflet JavaScript, which is sometimes helpful for debugging. (integrity=”sha256-tPonvXioSHRQt1+4ztWR5mz/1KG1X3yHNzVXprP2gLo=”)  
> `leaflet.css` - This is the stylesheet for Leaflet.  
> `images` - This is a folder that contains images referenced by leaflet.css. It must be in the same directory as leaflet.css.  

Unzip the downloaded archive to your website’s directory and add this to the head of your HTML code:  

```html
<link rel="stylesheet" href="/path/to/leaflet.css" />
<script src="/path/to/leaflet.js"></script>
```

