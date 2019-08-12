library(htmlwidgets)
library(leaflet)
library(geojsonio)
library(rjson)



mymap <- leaflet() 
  
esri <- grep("^Esri", providers, value = T)
esri<- esri[c(2 , 11,5)]
esri

for (provider in esri) {
  mymap <- mymap %>% addProviderTiles(provider, group = provider)
}

mymap %>% addLayersControl(baseGroups = names(esri),
                 options = layersControlOptions(collapsed = TRUE)) %>%
setView(-74.051257, 4.673637 ,zoom = 17)  %>%
  addMarkers(lat=4.673637, lng=-74.051257, label = "Esri Colombia")%>%
  addMiniMap(tiles = esri[[1]], toggleDisplay = TRUE,
             position = "bottomleft") %>%
  htmlwidgets::onRender("
    function(el, x) {
      var myMap = this;
      myMap.on('baselayerchange',
        function (e) {
          myMap.minimap.changeLayer(L.tileLayer.provider(e.name));
        })
    }")
