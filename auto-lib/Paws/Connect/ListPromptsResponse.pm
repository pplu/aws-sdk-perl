
package Paws::Connect::ListPromptsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PromptSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::PromptSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPromptsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 PromptSummaryList => ArrayRef[L<Paws::Connect::PromptSummary>]

Information about the prompts.


=head2 _request_id => Str


=cut

