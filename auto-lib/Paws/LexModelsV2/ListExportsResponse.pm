
package Paws::LexModelsV2::ListExportsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has ExportSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ExportSummary]', traits => ['NameInRequest'], request_name => 'exportSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListExportsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier assigned to the bot by Amazon Lex.


=head2 BotVersion => Str

The version of the bot that was exported.


=head2 ExportSummaries => ArrayRef[L<Paws::LexModelsV2::ExportSummary>]

Summary information for the exports that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter. If there are more exports available, the
C<nextToken> field contains a token to get the next page of results.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListExports> operation. If the C<nextToken> field is
present, you send the contents as the C<nextToken> parameter of a
C<ListExports> operation request to get the next page of results.


=head2 _request_id => Str


=cut

