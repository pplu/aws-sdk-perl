
package Paws::Transfer::DescribeUserResponse;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has User => (is => 'ro', isa => 'Paws::Transfer::DescribedUser', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server that has this
user assigned.


=head2 B<REQUIRED> User => L<Paws::Transfer::DescribedUser>

An array containing the properties of the user account for the
C<ServerID> value that you specified.


=head2 _request_id => Str


=cut

1;