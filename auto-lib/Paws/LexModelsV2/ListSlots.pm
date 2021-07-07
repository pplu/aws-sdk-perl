
package Paws::LexModelsV2::ListSlots;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'intentId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::SlotSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSlots');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListSlotsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSlots - Arguments for method ListSlots on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSlots on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListSlots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSlots.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListSlotsResponse = $models - v2 -lex->ListSlots(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      IntentId   => 'MyId',
      LocaleId   => 'MyLocaleId',
      Filters    => [
        {
          Name     => 'SlotName',    # values: SlotName
          Operator => 'CO',          # values: CO, EQ
          Values   => [
            'MyFilterValue', ...     # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'SlotName',      # values: SlotName, LastUpdatedDateTime
        Order     => 'Ascending',     # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BotId         = $ListSlotsResponse->BotId;
    my $BotVersion    = $ListSlotsResponse->BotVersion;
    my $IntentId      = $ListSlotsResponse->IntentId;
    my $LocaleId      = $ListSlotsResponse->LocaleId;
    my $NextToken     = $ListSlotsResponse->NextToken;
    my $SlotSummaries = $ListSlotsResponse->SlotSummaries;

    # Returns a L<Paws::LexModelsV2::ListSlotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListSlots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot that contains the slot.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the slot.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::SlotFilter>]

Provides the specification of a filter used to limit the slots in the
response to only those that match the filter specification. You can
only specify one filter and only one string to filter on.



=head2 B<REQUIRED> IntentId => Str

The unique identifier of the intent that contains the slot.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the slots to list. The
string must match one of the supported locales. For more information,
see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MaxResults => Int

The maximum number of slots to return in each page of results. If there
are fewer results than the max page size, only the actual number of
results are returned.



=head2 NextToken => Str

If the response from the C<ListSlots> operation contains more results
than specified in the C<maxResults> parameter, a token is returned in
the response. Use that token in the C<nextToken> parameter to return
the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::SlotSortBy>

Determines the sort order for the response from the C<ListSlots>
operation. You can choose to sort by the slot name or last updated date
in either ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSlots in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

