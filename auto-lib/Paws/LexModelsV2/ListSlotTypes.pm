
package Paws::LexModelsV2::ListSlotTypes;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotTypeFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::SlotTypeSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSlotTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListSlotTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSlotTypes - Arguments for method ListSlotTypes on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSlotTypes on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListSlotTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSlotTypes.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListSlotTypesResponse = $models - v2 -lex->ListSlotTypes(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      LocaleId   => 'MyLocaleId',
      Filters    => [
        {
          Name     => 'SlotTypeName',    # values: SlotTypeName
          Operator => 'CO',              # values: CO, EQ
          Values   => [
            'MyFilterValue', ...         # min: 1, max: 100
          ],                             # min: 1, max: 1

        },
        ...
      ],                                 # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
      SortBy     => {
        Attribute => 'SlotTypeName', # values: SlotTypeName, LastUpdatedDateTime
        Order     => 'Ascending',    # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BotId             = $ListSlotTypesResponse->BotId;
    my $BotVersion        = $ListSlotTypesResponse->BotVersion;
    my $LocaleId          = $ListSlotTypesResponse->LocaleId;
    my $NextToken         = $ListSlotTypesResponse->NextToken;
    my $SlotTypeSummaries = $ListSlotTypesResponse->SlotTypeSummaries;

    # Returns a L<Paws::LexModelsV2::ListSlotTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListSlotTypes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot that contains the slot types.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the slot type.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::SlotTypeFilter>]

Provides the specification of a filter used to limit the slot types in
the response to only those that match the filter specification. You can
only specify one filter and only one string to filter on.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the slot types to list.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MaxResults => Int

The maximum number of slot types to return in each page of results. If
there are fewer results than the max page size, only the actual number
of results are returned.



=head2 NextToken => Str

If the response from the C<ListSlotTypes> operation contains more
results than specified in the C<maxResults> parameter, a token is
returned in the response. Use that token in the C<nextToken> parameter
to return the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::SlotTypeSortBy>

Determines the sort order for the response from the C<ListSlotTypes>
operation. You can choose to sort by the slot type name or last updated
date in either ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSlotTypes in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

