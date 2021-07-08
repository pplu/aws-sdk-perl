
package Paws::IoTEvents::ListInputRoutingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RoutedResources => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::RoutedResource]', traits => ['NameInRequest'], request_name => 'routedResources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListInputRoutingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 RoutedResources => ArrayRef[L<Paws::IoTEvents::RoutedResource>]

Summary information about the routed resources.


=head2 _request_id => Str


=cut

