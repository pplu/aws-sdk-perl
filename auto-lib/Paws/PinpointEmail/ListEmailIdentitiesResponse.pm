
package Paws::PinpointEmail::ListEmailIdentitiesResponse;
  use Moose;
  has EmailIdentities => (is => 'ro', isa => 'ArrayRef[Paws::PinpointEmail::IdentityInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListEmailIdentitiesResponse

=head1 ATTRIBUTES


=head2 EmailIdentities => ArrayRef[L<Paws::PinpointEmail::IdentityInfo>]

An array that includes all of the identities associated with your
Amazon Pinpoint account.


=head2 NextToken => Str

A token that indicates that there are additional configuration sets to
list. To view additional configuration sets, issue another request to
C<ListEmailIdentities>, and pass this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

