# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::ExportServerEngineAttributeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_EngineAttribute/;
  has EngineAttribute => (is => 'ro', isa => OpsWorksCM_EngineAttribute);
  has ServerName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineAttribute' => {
                                      'type' => 'OpsWorksCM_EngineAttribute',
                                      'class' => 'Paws::OpsWorksCM::EngineAttribute'
                                    },
               'ServerName' => {
                                 'type' => 'Str'
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

Paws::OpsWorksCM::ExportServerEngineAttributeResponse

=head1 ATTRIBUTES


=head2 EngineAttribute => OpsWorksCM_EngineAttribute

The requested engine attribute pair with attribute name and value.


=head2 ServerName => Str

The server name used in the request.


=head2 _request_id => Str


=cut

1;