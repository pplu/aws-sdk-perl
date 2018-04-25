
package Paws::IoTAnalytics::ListPipelinesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PipelineSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::PipelineSummary]', traits => ['NameInRequest'], request_name => 'pipelineSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListPipelinesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 PipelineSummaries => ArrayRef[L<Paws::IoTAnalytics::PipelineSummary>]

A list of "PipelineSummary" objects.


=head2 _request_id => Str


=cut

