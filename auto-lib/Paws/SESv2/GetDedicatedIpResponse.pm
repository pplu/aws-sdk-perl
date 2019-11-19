
package Paws::SESv2::GetDedicatedIpResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw/SESv2_DedicatedIp/;
  has DedicatedIp => (is => 'ro', isa => SESv2_DedicatedIp);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DedicatedIp' => {
                                  'class' => 'Paws::SESv2::DedicatedIp',
                                  'type' => 'SESv2_DedicatedIp'
                                },
               '_request_id' => {
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

Paws::SESv2::GetDedicatedIpResponse

=head1 ATTRIBUTES


=head2 DedicatedIp => SESv2_DedicatedIp

An object that contains information about a dedicated IP address.


=head2 _request_id => Str


=cut

