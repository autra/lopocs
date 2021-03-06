{
  "pipeline":[
    {
      "type":"readers.las",
      "filename":"!LAZFILE!",
      "spatialreference":"EPSG:!SRID!"
    },
    {
      "type":"filters.chipper",
      "capacity":!SIZE!
    },
    {
      "type":"filters.midoc"
    },
    {
      "type":"writers.pgpointcloud",
      "connection":"dbname=!DB! user=!USER!",
      "table":"!TABLE!",
      "compression":"laz",
      "srid":"!SRID!",
      "overwrite":"false"
    }
  ]
}
