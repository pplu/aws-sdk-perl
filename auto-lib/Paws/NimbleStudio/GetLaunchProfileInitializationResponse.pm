
package Paws::NimbleStudio::GetLaunchProfileInitializationResponse;
  use Moose;
  has LaunchProfileInitialization => (is => 'ro', isa => 'Paws::NimbleStudio::LaunchProfileInitialization', traits => ['NameInRequest'], request_name => 'launchProfileInitialization');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetLaunchProfileInitializationResponse

=head1 ATTRIBUTES


=head2 LaunchProfileInitialization => L<Paws::NimbleStudio::LaunchProfileInitialization>

The launch profile initialization.


=head2 _request_id => Str


=cut

