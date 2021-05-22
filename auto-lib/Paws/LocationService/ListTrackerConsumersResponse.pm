
package Paws::LocationService::ListTrackerConsumersResponse;
  use Moose;
  has ConsumerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListTrackerConsumersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerArns => ArrayRef[Str|Undef]

Contains the list of geofence collection ARNs associated to the tracker
resource.


=head2 NextToken => Str

A pagination token indicating there are additional pages available. You
can use the token in a following request to fetch the next set of
results.


=head2 _request_id => Str


=cut

