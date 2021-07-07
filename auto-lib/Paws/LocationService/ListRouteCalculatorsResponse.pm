
package Paws::LocationService::ListRouteCalculatorsResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::ListRouteCalculatorsResponseEntry]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListRouteCalculatorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::LocationService::ListRouteCalculatorsResponseEntry>]

Lists the route calculator resources that exist in your AWS account


=head2 NextToken => Str

A pagination token indicating there are additional pages available. You
can use the token in a subsequent request to fetch the next set of
results.


=head2 _request_id => Str


=cut

