
package Paws::NimbleStudio::GetLaunchProfileResponse;
  use Moose;
  has LaunchProfile => (is => 'ro', isa => 'Paws::NimbleStudio::LaunchProfile', traits => ['NameInRequest'], request_name => 'launchProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetLaunchProfileResponse

=head1 ATTRIBUTES


=head2 LaunchProfile => L<Paws::NimbleStudio::LaunchProfile>

The launch profile.


=head2 _request_id => Str


=cut

