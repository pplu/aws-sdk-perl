
package Paws::LexModelsV2::ListImportsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has ImportSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ImportSummary]', traits => ['NameInRequest'], request_name => 'importSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListImportsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier assigned by Amazon Lex to the bot.


=head2 BotVersion => Str

The version of the bot that was imported. It will always be C<DRAFT>.


=head2 ImportSummaries => ArrayRef[L<Paws::LexModelsV2::ImportSummary>]

Summary information for the imports that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter. If there are more imports available, the
C<nextToken> field contains a token to get the next page of results.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListImports> operation. If the C<nextToken> field is
present, you send the contents as the C<nextToken> parameter of a
C<ListImports> operation request to get the next page of results.


=head2 _request_id => Str


=cut

