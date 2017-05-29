
package Paws::DMS::DescribeEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Event]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::DMS::Event>]

The events described.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;