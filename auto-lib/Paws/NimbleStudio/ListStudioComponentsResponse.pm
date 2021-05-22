
package Paws::NimbleStudio::ListStudioComponentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StudioComponents => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::StudioComponent]', traits => ['NameInRequest'], request_name => 'studioComponents');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListStudioComponentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 StudioComponents => ArrayRef[L<Paws::NimbleStudio::StudioComponent>]

A collection of studio components.


=head2 _request_id => Str


=cut

