suite 'Edit:', ->
  test 'Import', ->
    test13imported = xml('test13imported', { headless: true })
      .ele('node', 'imported')

    eq(
      xml('test13', { headless: true })
        .importDocument(test13imported.doc())
        .end()
      '<test13><test13imported><node>imported</node></test13imported></test13>'
    )

    eq(
      xml('test13', { headless: true })
        .importXMLBuilder(test13imported.doc())
        .end()
      '<test13><test13imported><node>imported</node></test13imported></test13>'
    )

  test 'Import in to empty document', ->
    importedDoc = xml('imported', { headless: true })
      .ele('node', 'imported node')

    eq(
      doc({ headless: true })
        .importDocument(importedDoc.doc())
        .end()
      '<imported><node>imported node</node></imported>'
    )

