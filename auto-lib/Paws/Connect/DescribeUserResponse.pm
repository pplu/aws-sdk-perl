
package Paws::Connect::DescribeUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::Connect::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::Connect::User>

A C<User> object that contains information about the user account and
configuration settings.


=head2 _request_id => Str


=cut

