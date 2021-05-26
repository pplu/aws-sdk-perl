
package Paws::DataExchange::GetRevisionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str');
  has Finalized => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has SourceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetRevisionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the revision


=head2 Comment => Str

An optional comment about the revision.


=head2 CreatedAt => Str

The date and time that the revision was created, in ISO 8601 format.


=head2 DataSetId => Str

The unique identifier for the data set associated with this revision.


=head2 Finalized => Bool

To publish a revision to a data set in a product, the revision must
first be finalized. Finalizing a revision tells AWS Data Exchange that
your changes to the assets in the revision are complete. After it's in
this read-only state, you can publish the revision to your products.

Finalized revisions can be published through the AWS Data Exchange
console or the AWS Marketplace Catalog API, using the StartChangeSet
AWS Marketplace Catalog API action. When using the API, revisions are
uniquely identified by their ARN.


=head2 Id => Str

The unique identifier for the revision.


=head2 SourceId => Str

The revision ID of the owned revision corresponding to the entitled
revision being viewed. This parameter is returned when a revision owner
is viewing the entitled copy of its owned revision.


=head2 Tags => L<Paws::DataExchange::MapOf__string>

The tags for the revision.


=head2 UpdatedAt => Str

The date and time that the revision was last updated, in ISO 8601
format.


=head2 _request_id => Str


=cut

