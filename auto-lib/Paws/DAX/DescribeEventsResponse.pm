
package Paws::DAX::DescribeEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Event]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::DAX::Event>]

An array of events. Each element in the array represents one event.


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

1;