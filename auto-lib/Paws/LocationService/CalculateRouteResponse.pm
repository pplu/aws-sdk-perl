
package Paws::LocationService::CalculateRouteResponse;
  use Moose;
  has Legs => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::Leg]', required => 1);
  has Summary => (is => 'ro', isa => 'Paws::LocationService::CalculateRouteSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CalculateRouteResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Legs => ArrayRef[L<Paws::LocationService::Leg>]

Contains details about each path between a pair of positions included
along a route such as: C<StartPosition>, C<EndPosition>, C<Distance>,
C<DurationSeconds>, C<Geometry>, and C<Steps>. The number of legs
returned corresponds to one less than the total number of positions in
the request.

For example, a route with a departure position and destination position
returns one leg with the positions snapped to a nearby road
(https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html#snap-to-nearby-road):

=over

=item *

The C<StartPosition> is the departure position.

=item *

The C<EndPosition> is the destination position.

=back

A route with a waypoint between the departure and destination position
returns two legs with the positions snapped to a nearby road.:

=over

=item *

Leg 1: The C<StartPosition> is the departure position . The
C<EndPosition> is the waypoint positon.

=item *

Leg 2: The C<StartPosition> is the waypoint position. The
C<EndPosition> is the destination position.

=back



=head2 B<REQUIRED> Summary => L<Paws::LocationService::CalculateRouteSummary>

Contains information about the whole route, such as: C<RouteBBox>,
C<DataSource>, C<Distance>, C<DistanceUnit>, and C<DurationSeconds>


=head2 _request_id => Str


=cut

