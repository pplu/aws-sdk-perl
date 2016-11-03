
package Paws::CloudWatchLogs::DescribeDestinationsResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Destination]', traits => ['NameInRequest'], request_name => 'destinations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDestinationsResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::CloudWatchLogs::Destination>]





=head2 NextToken => Str






=cut

1;