
package Paws::WorkLink::DescribeDevicePolicyConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has DeviceCaCertificate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeviceCaCertificate' => {
                                          'type' => 'Str'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeDevicePolicyConfigurationResponse

=head1 ATTRIBUTES


=head2 DeviceCaCertificate => Str

The certificate chain, including intermediate certificates and the root
certificate authority certificate used to issue device certificates.


=head2 _request_id => Str


=cut

