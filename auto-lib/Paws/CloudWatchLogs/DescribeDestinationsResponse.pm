
package Paws::CloudWatchLogs::DescribeDestinationsResponse {
  use Moose;
  has destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Destination]');
  has nextToken => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDestinationsResponse

=head1 ATTRIBUTES

=head2 destinations => ArrayRef[Paws::CloudWatchLogs::Destination]

  
=head2 nextToken => Str

  


=cut

1;