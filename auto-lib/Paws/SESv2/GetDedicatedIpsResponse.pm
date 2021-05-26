
package Paws::SESv2::GetDedicatedIpsResponse;
  use Moose;
  has DedicatedIps => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::DedicatedIp]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDedicatedIpsResponse

=head1 ATTRIBUTES


=head2 DedicatedIps => ArrayRef[L<Paws::SESv2::DedicatedIp>]

A list of dedicated IP addresses that are associated with your AWS
account.


=head2 NextToken => Str

A token that indicates that there are additional dedicated IP addresses
to list. To view additional addresses, issue another request to
C<GetDedicatedIps>, passing this token in the C<NextToken> parameter.


=head2 _request_id => Str


=cut

