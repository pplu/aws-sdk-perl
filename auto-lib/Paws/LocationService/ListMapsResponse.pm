
package Paws::LocationService::ListMapsResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::ListMapsResponseEntry]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListMapsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::LocationService::ListMapsResponseEntry>]

Contains a list of maps in your AWS account


=head2 NextToken => Str

A pagination token indicating there are additional pages available. You
can use the token in a following request to fetch the next set of
results.


=head2 _request_id => Str


=cut

