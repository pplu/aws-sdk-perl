
package Paws::LexModelsV2::ListSlotsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentId');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SlotSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotSummary]', traits => ['NameInRequest'], request_name => 'slotSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSlotsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the slots.


=head2 BotVersion => Str

The version of the bot that contains the slots.


=head2 IntentId => Str

The identifier of the intent that contains the slots.


=head2 LocaleId => Str

The language and locale of the slots in the list.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListSlots> operation. If the C<nextToken> field is
present, you send the contents as the C<nextToken> parameter of a
C<ListSlots> operation request to get the next page of results.


=head2 SlotSummaries => ArrayRef[L<Paws::LexModelsV2::SlotSummary>]

Summary information for the slots that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter of the request. If there are more slots
available, the C<nextToken> field contains a token to get the next page
of results.


=head2 _request_id => Str


=cut

