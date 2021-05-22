
package Paws::CloudWatchLogs::DescribeQueryDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has QueryDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::QueryDefinition]', traits => ['NameInRequest'], request_name => 'queryDefinitions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeQueryDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 QueryDefinitions => ArrayRef[L<Paws::CloudWatchLogs::QueryDefinition>]

The list of query definitions that match your request.


=head2 _request_id => Str


=cut

1;