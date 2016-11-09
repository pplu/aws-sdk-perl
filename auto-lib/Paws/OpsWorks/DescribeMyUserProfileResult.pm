
package Paws::OpsWorks::DescribeMyUserProfileResult;
  use Moose;
  has UserProfile => (is => 'ro', isa => 'Paws::OpsWorks::SelfUserProfile');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeMyUserProfileResult

=head1 ATTRIBUTES


=head2 UserProfile => L<Paws::OpsWorks::SelfUserProfile>

A C<UserProfile> object that describes the user's SSH information.


=head2 _request_id => Str


=cut

1;