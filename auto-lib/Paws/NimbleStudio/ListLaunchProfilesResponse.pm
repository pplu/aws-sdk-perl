
package Paws::NimbleStudio::ListLaunchProfilesResponse;
  use Moose;
  has LaunchProfiles => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::LaunchProfile]', traits => ['NameInRequest'], request_name => 'launchProfiles');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListLaunchProfilesResponse

=head1 ATTRIBUTES


=head2 LaunchProfiles => ArrayRef[L<Paws::NimbleStudio::LaunchProfile>]

A collection of launch profiles.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

