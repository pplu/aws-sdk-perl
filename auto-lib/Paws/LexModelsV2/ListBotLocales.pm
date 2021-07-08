
package Paws::LexModelsV2::ListBotLocales;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotLocaleFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::BotLocaleSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBotLocales');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotLocalesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotLocales - Arguments for method ListBotLocales on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBotLocales on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBotLocales.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBotLocales.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotLocalesResponse = $models - v2 -lex->ListBotLocales(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      Filters    => [
        {
          Name     => 'BotLocaleName',    # values: BotLocaleName
          Operator => 'CO',               # values: CO, EQ
          Values   => [
            'MyFilterValue', ...          # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'BotLocaleName',    # values: BotLocaleName
        Order     => 'Ascending',        # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BotId              = $ListBotLocalesResponse->BotId;
    my $BotLocaleSummaries = $ListBotLocalesResponse->BotLocaleSummaries;
    my $BotVersion         = $ListBotLocalesResponse->BotVersion;
    my $NextToken          = $ListBotLocalesResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListBotLocalesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBotLocales>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot to list locales for.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot to list locales for.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::BotLocaleFilter>]

Provides the specification for a filter used to limit the response to
only those locales that match the filter specification. You can only
specify one filter and one value to filter on.



=head2 MaxResults => Int

The maximum number of aliases to return in each page of results. If
there are fewer results than the max page size, only the actual number
of results are returned.



=head2 NextToken => Str

If the response from the C<ListBotLocales> operation contains more
results than specified in the C<maxResults> parameter, a token is
returned in the response. Use that token as the C<nextToken> parameter
to return the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::BotLocaleSortBy>

Specifies sorting parameters for the list of locales. You can sort by
locale name in ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBotLocales in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

