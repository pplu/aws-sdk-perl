
package Paws::Athena::GetDataCatalogOutput;
  use Moose;
  has DataCatalog => (is => 'ro', isa => 'Paws::Athena::DataCatalog');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetDataCatalogOutput

=head1 ATTRIBUTES


=head2 DataCatalog => L<Paws::Athena::DataCatalog>

The data catalog returned.


=head2 _request_id => Str


=cut

1;