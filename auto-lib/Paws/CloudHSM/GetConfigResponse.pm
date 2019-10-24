# Generated from json/callresult_class.tt

package Paws::CloudHSM::GetConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has ConfigCred => (is => 'ro', isa => Str);
  has ConfigFile => (is => 'ro', isa => Str);
  has ConfigType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigType' => {
                                 'type' => 'Str'
                               },
               'ConfigCred' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfigFile' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::GetConfigResponse

=head1 ATTRIBUTES


=head2 ConfigCred => Str

The certificate file containing the server.pem files of the HSMs.


=head2 ConfigFile => Str

The chrystoki.conf configuration file.


=head2 ConfigType => Str

The type of credentials.


=head2 _request_id => Str


=cut

1;