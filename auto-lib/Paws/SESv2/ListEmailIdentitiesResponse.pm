
package Paws::SESv2::ListEmailIdentitiesResponse;
  use Moose;
  has EmailIdentities => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::IdentityInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListEmailIdentitiesResponse

=head1 ATTRIBUTES


=head2 EmailIdentities => ArrayRef[L<Paws::SESv2::IdentityInfo>]

An array that includes all of the email identities associated with your
AWS account.


=head2 NextToken => Str

A token that indicates that there are additional configuration sets to
list. To view additional configuration sets, issue another request to
C<ListEmailIdentities>, and pass this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

