
package Paws::EC2::ExportClientVpnClientConfigurationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ClientConfiguration => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientConfiguration' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientConfiguration' => 'clientConfiguration'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportClientVpnClientConfigurationResult

=head1 ATTRIBUTES


=head2 ClientConfiguration => Str

The contents of the Client VPN endpoint configuration file.


=head2 _request_id => Str


=cut

