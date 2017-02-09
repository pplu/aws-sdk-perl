
package Paws::CloudWatchLogs::DescribeDestinationsResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Destination]', traits => ['NameInRequest'], request_name => 'destinations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDestinationsResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::CloudWatchLogs::Destination>]

The destinations.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;