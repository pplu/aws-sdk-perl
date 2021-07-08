
package Paws::LexModelsV2::ListBuiltInIntentsResponse;
  use Moose;
  has BuiltInIntentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BuiltInIntentSummary]', traits => ['NameInRequest'], request_name => 'builtInIntentSummaries');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBuiltInIntentsResponse

=head1 ATTRIBUTES


=head2 BuiltInIntentSummaries => ArrayRef[L<Paws::LexModelsV2::BuiltInIntentSummary>]

Summary information for the built-in intents that meet the filter
criteria specified in the request. The length of the list is specified
in the C<maxResults> parameter of the request. If there are more
intents available, the C<nextToken> field contains a token to get the
next page of results.


=head2 LocaleId => Str

The language and locale of the intents in the list.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListBuiltInIntents> operation. If the C<nextToken>
field is present, you send the contents as the C<nextToken> parameter
of a C<ListBotAliases> operation request to get the next page of
results.


=head2 _request_id => Str


=cut

