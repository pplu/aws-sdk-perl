
package Paws::LakeFormation::GetLFTagResponse;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetLFTagResponse

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.


=head2 TagKey => Str

The key-name for the tag.


=head2 TagValues => ArrayRef[Str|Undef]

A list of possible values an attribute can take.


=head2 _request_id => Str


=cut

1;