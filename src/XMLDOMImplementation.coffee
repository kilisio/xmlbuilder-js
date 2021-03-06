# Implements the DOMImplementation interface
module.exports = class XMLDOMImplementation


  # Tests if the DOM implementation implements a specific feature.
  #
  # `feature` package name of the feature to test. In Level 1, the
  #           legal values are "HTML" and "XML" (case-insensitive).
  # `version` version number of the package name to test. 
  #           In Level 1, this is the string "1.0". If the version is 
  #           not specified, supporting any version of the feature will 
  #           cause the method to return true.
  hasFeature: (feature, version) ->
    return true


  # Creates a new document type declaration.
  #
  # `qualifiedName` qualified name of the document type to be created
  # `publicId` public identifier of the external subset
  # `systemId` system identifier of the external subset
  createDocumentType: (qualifiedName, publicId, systemId) ->
    throw new Error "This DOM method is not implemented."


  # Creates a new document.
  #
  # `namespaceURI` namespace URI of the document element to create
  # `qualifiedName` the qualified name of the document to be created
  # `doctype` the type of document to be created or null
  createDocument: (namespaceURI, qualifiedName, doctype) ->
    throw new Error "This DOM method is not implemented."


  # Creates a new HTML document.
  #
  # `title` document title
  createHTMLDocument: (title) ->
    throw new Error "This DOM method is not implemented."


  # Returns a specialized object which implements the specialized APIs 
  # of the specified feature and version.
  #
  # `feature` name of the feature requested.
  # `version` version number of the feature to test
  getFeature: (feature, version) ->
    throw new Error "This DOM method is not implemented."
