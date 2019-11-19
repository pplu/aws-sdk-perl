# Generated from json/callresult_class.tt

package Paws::Discovery::ExportConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Discovery::Types qw//;
  has ExportId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ExportId' => 'exportId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ExportConfigurationsResponse

=head1 ATTRIBUTES


=head2 ExportId => Str

A unique identifier that you can use to query the export status.


=head2 _request_id => Str


=cut

1;