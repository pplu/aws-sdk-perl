
package Paws::CloudWatchLogs::DescribeQueriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::QueryInfo]', traits => ['NameInRequest'], request_name => 'queries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeQueriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Queries => ArrayRef[L<Paws::CloudWatchLogs::QueryInfo>]

The list of queries that match the request.


=head2 _request_id => Str


=cut

1;