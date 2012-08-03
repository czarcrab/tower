require './shared/model'
require './shared/scope'
require './shared/massAssignment'
require './shared/authentication'
require './shared/cursor'
require './shared/dirty'
require './shared/indexing'
require './shared/inheritance'
require './shared/metadata'
require './shared/relation'
require './shared/relations'
require './shared/attachment'
require './shared/attribute'
require './shared/attributes'
require './shared/nestedAttributes'
require './shared/autosaveAssociation'
require './shared/persistence'
require './shared/scopes'
require './shared/serialization'
require './shared/states'
require './shared/validator'
require './shared/validations'
require './shared/timestamp'
require './shared/transactions'
require './shared/operations'
require './shared/hierarchical'
require './shared/ability'
require './shared/locale/en'

Tower.Model.include Tower.Support.Callbacks
Tower.Model.include Tower.Model.Metadata
Tower.Model.include Tower.Model.Dirty
Tower.Model.include Tower.Model.Indexing
Tower.Model.include Tower.Model.Authentication
Tower.Model.include Tower.Model.MassAssignment
Tower.Model.include Tower.Model.Scopes
Tower.Model.include Tower.Model.Persistence
Tower.Model.include Tower.Model.Inheritance
Tower.Model.include Tower.Model.Serialization
Tower.Model.include Tower.Model.States
Tower.Model.include Tower.Model.Relations
Tower.Model.include Tower.Model.Validations
Tower.Model.include Tower.Model.Attachment
Tower.Model.include Tower.Model.Attributes
Tower.Model.include Tower.Model.NestedAttributes
Tower.Model.include Tower.Model.AutosaveAssociation
Tower.Model.include Tower.Model.Timestamp
Tower.Model.include Tower.Model.Hierarchical
Tower.Model.include Tower.Model.Operations
Tower.Model.include Tower.Model.Transactions

Tower.Model.field('id', type: 'Id')
Tower.Model.protected('id') # attrProtectedByDefault tmp
