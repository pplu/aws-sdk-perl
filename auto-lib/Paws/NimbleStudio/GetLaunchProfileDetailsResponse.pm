
package Paws::NimbleStudio::GetLaunchProfileDetailsResponse;
  use Moose;
  has LaunchProfile => (is => 'ro', isa => 'Paws::NimbleStudio::LaunchProfile', traits => ['NameInRequest'], request_name => 'launchProfile');
  has StreamingImages => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::StreamingImage]', traits => ['NameInRequest'], request_name => 'streamingImages');
  has StudioComponentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::StudioComponentSummary]', traits => ['NameInRequest'], request_name => 'studioComponentSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetLaunchProfileDetailsResponse

=head1 ATTRIBUTES


=head2 LaunchProfile => L<Paws::NimbleStudio::LaunchProfile>

The launch profile.


=head2 StreamingImages => ArrayRef[L<Paws::NimbleStudio::StreamingImage>]

A collection of streaming images.


=head2 StudioComponentSummaries => ArrayRef[L<Paws::NimbleStudio::StudioComponentSummary>]

A collection of studio component summaries.


=head2 _request_id => Str


=cut

