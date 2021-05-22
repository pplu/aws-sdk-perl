
package Paws::LexModelsV2::ListBotsResponse;
  use Moose;
  has BotSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotSummary]', traits => ['NameInRequest'], request_name => 'botSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotsResponse

=head1 ATTRIBUTES


=head2 BotSummaries => ArrayRef[L<Paws::LexModelsV2::BotSummary>]

Summary information for the bots that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter of the request. If there are more bots
available, the C<nextToken> field contains a token to the next page of
results.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListBots> operation. If the C<nextToken> field is
present, you send the contents as the C<nextToken> parameter of a
C<ListBots> operation request to get the next page of results.


=head2 _request_id => Str


=cut

