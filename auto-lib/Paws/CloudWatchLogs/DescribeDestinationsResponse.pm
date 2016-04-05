
package Paws::CloudWatchLogs::DescribeDestinationsResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Destination]', traits => ['Unwrapped'], xmlname => 'destinations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDestinationsResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::CloudWatchLogs::Destination>]





=head2 NextToken => Str






=cut

1;