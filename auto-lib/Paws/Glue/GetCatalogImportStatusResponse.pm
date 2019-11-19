# Generated from json/callresult_class.tt

package Paws::Glue::GetCatalogImportStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_CatalogImportStatus/;
  has ImportStatus => (is => 'ro', isa => Glue_CatalogImportStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ImportStatus' => {
                                   'type' => 'Glue_CatalogImportStatus',
                                   'class' => 'Paws::Glue::CatalogImportStatus'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCatalogImportStatusResponse

=head1 ATTRIBUTES


=head2 ImportStatus => Glue_CatalogImportStatus

The status of the specified catalog migration.


=head2 _request_id => Str


=cut

1;