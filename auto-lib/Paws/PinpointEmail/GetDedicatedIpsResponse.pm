
package Paws::PinpointEmail::GetDedicatedIpsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DedicatedIp/;
  has DedicatedIps => (is => 'ro', isa => ArrayRef[PinpointEmail_DedicatedIp]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DedicatedIps' => {
                                   'class' => 'Paws::PinpointEmail::DedicatedIp',
                                   'type' => 'ArrayRef[PinpointEmail_DedicatedIp]'
                                 },
               'NextToken' => {
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

Paws::PinpointEmail::GetDedicatedIpsResponse

=head1 ATTRIBUTES


=head2 DedicatedIps => ArrayRef[PinpointEmail_DedicatedIp]

A list of dedicated IP addresses that are reserved for use by your
Amazon Pinpoint account.


=head2 NextToken => Str

A token that indicates that there are additional dedicated IP addresses
to list. To view additional addresses, issue another request to
C<GetDedicatedIps>, passing this token in the C<NextToken> parameter.


=head2 _request_id => Str


=cut

