# Generated from json/callresult_class.tt

package Paws::Glue::GetDataCatalogEncryptionSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_DataCatalogEncryptionSettings/;
  has DataCatalogEncryptionSettings => (is => 'ro', isa => Glue_DataCatalogEncryptionSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataCatalogEncryptionSettings' => {
                                                    'class' => 'Paws::Glue::DataCatalogEncryptionSettings',
                                                    'type' => 'Glue_DataCatalogEncryptionSettings'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataCatalogEncryptionSettingsResponse

=head1 ATTRIBUTES


=head2 DataCatalogEncryptionSettings => Glue_DataCatalogEncryptionSettings

The requested security configuration.


=head2 _request_id => Str


=cut

1;