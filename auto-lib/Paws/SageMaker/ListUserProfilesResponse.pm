
package Paws::SageMaker::ListUserProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::UserProfileDetails]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListUserProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 UserProfiles => ArrayRef[L<Paws::SageMaker::UserProfileDetails>]

The list of user profiles.


=head2 _request_id => Str


=cut

1;