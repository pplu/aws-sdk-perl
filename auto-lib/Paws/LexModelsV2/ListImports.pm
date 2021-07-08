
package Paws::LexModelsV2::ListImports;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ImportFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::ImportSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imports/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListImportsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListImports - Arguments for method ListImports on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImports on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListImports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImports.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListImportsResponse = $models - v2 -lex->ListImports(
      BotId      => 'MyId',                 # OPTIONAL
      BotVersion => 'MyDraftBotVersion',    # OPTIONAL
      Filters    => [
        {
          Name     => 'ImportResourceType',    # values: ImportResourceType
          Operator => 'CO',                    # values: CO, EQ
          Values   => [
            'MyFilterValue', ...               # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'LastUpdatedDateTime',    # values: LastUpdatedDateTime
        Order     => 'Ascending',              # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BotId           = $ListImportsResponse->BotId;
    my $BotVersion      = $ListImportsResponse->BotVersion;
    my $ImportSummaries = $ListImportsResponse->ImportSummaries;
    my $NextToken       = $ListImportsResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListImportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListImports>

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier that Amazon Lex assigned to the bot.



=head2 BotVersion => Str

The version of the bot to list imports for.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::ImportFilter>]

Provides the specification of a filter used to limit the bots in the
response to only those that match the filter specification. You can
only specify one filter and one string to filter on.



=head2 MaxResults => Int

The maximum number of imports to return in each page of results. If
there are fewer results than the max page size, only the actual number
of results are returned.



=head2 NextToken => Str

If the response from the C<ListImports> operation contains more results
than specified in the C<maxResults> parameter, a token is returned in
the response. Use that token in the C<nextToken> parameter to return
the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::ImportSortBy>

Determines the field that the list of imports is sorted by. You can
sort by the C<LastUpdatedDateTime> field in ascending or descending
order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImports in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

