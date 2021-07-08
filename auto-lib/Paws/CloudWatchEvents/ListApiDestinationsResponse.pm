
package Paws::CloudWatchEvents::ListApiDestinationsResponse;
  use Moose;
  has ApiDestinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::ApiDestination]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListApiDestinationsResponse

=head1 ATTRIBUTES


=head2 ApiDestinations => ArrayRef[L<Paws::CloudWatchEvents::ApiDestination>]

An array of C<ApiDestination> objects that include information about an
API destination.


=head2 NextToken => Str

A token you can use in a subsequent request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

1;