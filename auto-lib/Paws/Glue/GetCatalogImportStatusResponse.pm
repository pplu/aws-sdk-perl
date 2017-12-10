
package Paws::Glue::GetCatalogImportStatusResponse;
  use Moose;
  has ImportStatus => (is => 'ro', isa => 'Paws::Glue::CatalogImportStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCatalogImportStatusResponse

=head1 ATTRIBUTES


=head2 ImportStatus => L<Paws::Glue::CatalogImportStatus>

The status of the specified catalog migration.


=head2 _request_id => Str


=cut

1;