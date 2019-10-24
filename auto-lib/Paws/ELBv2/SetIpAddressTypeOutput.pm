# Generated from callresult_class.tt

package Paws::ELBv2::SetIpAddressTypeOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ELBv2::Types qw//;
  has IpAddressType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IpAddressType' => {
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

Paws::ELBv2::SetIpAddressTypeOutput

=head1 ATTRIBUTES


=head2 IpAddressType => Str

The IP address type.

Valid values are: C<"ipv4">, C<"dualstack">
=head2 _request_id => Str


=cut

