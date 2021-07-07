
package Paws::LexModelsV2::ListBots;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::BotSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBots');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBots - Arguments for method ListBots on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBots on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBots.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotsResponse = $models - v2 -lex->ListBots(
      Filters => [
        {
          Name     => 'BotName',    # values: BotName
          Operator => 'CO',         # values: CO, EQ
          Values   => [
            'MyFilterValue', ...    # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'BotName',       # values: BotName
        Order     => 'Ascending',     # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BotSummaries = $ListBotsResponse->BotSummaries;
    my $NextToken    = $ListBotsResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListBotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBots>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LexModelsV2::BotFilter>]

Provides the specification of a filter used to limit the bots in the
response to only those that match the filter specification. You can
only specify one filter and one string to filter on.



=head2 MaxResults => Int

The maximum number of bots to return in each page of results. If there
are fewer results than the maximum page size, only the actual number of
results are returned.



=head2 NextToken => Str

If the response from the C<ListBots> operation contains more results
than specified in the C<maxResults> parameter, a token is returned in
the response. Use that token in the C<nextToken> parameter to return
the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::BotSortBy>

Specifies sorting parameters for the list of bots. You can specify that
the list be sorted by bot name in ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBots in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

