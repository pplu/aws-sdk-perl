
package Paws::SESv2::GetDedicatedIpsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_DedicatedIp/;
  has DedicatedIps => (is => 'ro', isa => ArrayRef[SESv2_DedicatedIp]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DedicatedIps' => {
                                   'class' => 'Paws::SESv2::DedicatedIp',
                                   'type' => 'ArrayRef[SESv2_DedicatedIp]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDedicatedIpsResponse

=head1 ATTRIBUTES


=head2 DedicatedIps => ArrayRef[SESv2_DedicatedIp]

A list of dedicated IP addresses that are associated with your AWS
account.


=head2 NextToken => Str

A token that indicates that there are additional dedicated IP addresses
to list. To view additional addresses, issue another request to
C<GetDedicatedIps>, passing this token in the C<NextToken> parameter.


=head2 _request_id => Str


=cut

