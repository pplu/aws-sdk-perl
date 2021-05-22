
package Paws::LexModelsV2::ListSlotTypesResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SlotTypeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotTypeSummary]', traits => ['NameInRequest'], request_name => 'slotTypeSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSlotTypesResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the slot types.


=head2 BotVersion => Str

The version of the bot that contains the slot types.


=head2 LocaleId => Str

The language and local of the slot types in the list.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListSlotTypes> operation. If the C<nextToken> field
is present, you send the contents as the C<nextToken> parameter of a
C<ListSlotTypes> operation request to get the next page of results.


=head2 SlotTypeSummaries => ArrayRef[L<Paws::LexModelsV2::SlotTypeSummary>]

Summary information for the slot types that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter of the request. If there are more slot types
available, the C<nextToken> field contains a token to get the next page
of results.


=head2 _request_id => Str


=cut

