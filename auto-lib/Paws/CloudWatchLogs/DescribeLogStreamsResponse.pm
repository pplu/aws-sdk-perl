
package Paws::CloudWatchLogs::DescribeLogStreamsResponse;
  use Moose;
  has LogStreams => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogStream]', traits => ['NameInRequest'], request_name => 'logStreams' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogStreamsResponse

=head1 ATTRIBUTES


=head2 LogStreams => ArrayRef[L<Paws::CloudWatchLogs::LogStream>]

The log streams.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;