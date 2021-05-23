
package Paws::SSOIdentityStore::DescribeUserResponse;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserId => Str

The identifier for a user in the identity store.


=head2 B<REQUIRED> UserName => Str

Contains the userE<rsquo>s username value. The length limit is 128
characters. This value can consist of letters, accented characters,
symbols, numbers and punctuation. The characters
E<ldquo>E<lt>E<gt>;:%E<rdquo> are excluded. This value is specified at
the time the user is created and stored as an attribute of the user
object in the identity store.


=head2 _request_id => Str


=cut

1;