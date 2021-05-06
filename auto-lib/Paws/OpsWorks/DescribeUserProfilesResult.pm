
package Paws::OpsWorks::DescribeUserProfilesResult;
  use Moose;
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::UserProfile]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeUserProfilesResult

=head1 ATTRIBUTES


=head2 UserProfiles => ArrayRef[L<Paws::OpsWorks::UserProfile>]

A C<Users> object that describes the specified users.


=head2 _request_id => Str


=cut

1;