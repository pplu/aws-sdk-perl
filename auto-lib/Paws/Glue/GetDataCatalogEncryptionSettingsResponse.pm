
package Paws::Glue::GetDataCatalogEncryptionSettingsResponse;
  use Moose;
  has DataCatalogEncryptionSettings => (is => 'ro', isa => 'Paws::Glue::DataCatalogEncryptionSettings');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataCatalogEncryptionSettingsResponse

=head1 ATTRIBUTES


=head2 DataCatalogEncryptionSettings => L<Paws::Glue::DataCatalogEncryptionSettings>

The requested security configuration.


=head2 _request_id => Str


=cut

1;