
package Paws::SSOIdentityStore::DescribeGroupResponse;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisplayName => Str

Contains the groupE<rsquo>s display name value. The length limit is
1024 characters. This value can consist of letters, accented
characters, symbols, numbers, punctuation, tab, new line, carriage
return, space and non breaking space in this attribute. The characters
E<ldquo>E<lt>E<gt>;:%E<rdquo> are excluded. This value is specified at
the time the group is created and stored as an attribute of the group
object in the identity store.


=head2 B<REQUIRED> GroupId => Str

The identifier for a group in the identity store.


=head2 _request_id => Str


=cut

1;