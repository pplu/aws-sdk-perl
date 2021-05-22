
package Paws::LexModelsV2::ListBuiltInIntents;
  use Moose;
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::BuiltInIntentSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuiltInIntents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/builtins/locales/{localeId}/intents/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBuiltInIntentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBuiltInIntents - Arguments for method ListBuiltInIntents on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBuiltInIntents on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBuiltInIntents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBuiltInIntents.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBuiltInIntentsResponse = $models - v2 -lex->ListBuiltInIntents(
      LocaleId   => 'MyLocaleId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'IntentSignature',    # values: IntentSignature
        Order     => 'Ascending',          # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BuiltInIntentSummaries =
      $ListBuiltInIntentsResponse->BuiltInIntentSummaries;
    my $LocaleId  = $ListBuiltInIntentsResponse->LocaleId;
    my $NextToken = $ListBuiltInIntentsResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListBuiltInIntentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBuiltInIntents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the intents to list. The
string must match one of the supported locales. For more information,
see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MaxResults => Int

The maximum number of built-in intents to return in each page of
results. If there are fewer results than the max page size, only the
actual number of results are returned.



=head2 NextToken => Str

If the response from the C<ListBuiltInIntents> operation contains more
results than specified in the C<maxResults> parameter, a token is
returned in the response. Use that token in the C<nextToken> parameter
to return the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::BuiltInIntentSortBy>

Specifies sorting parameters for the list of built-in intents. You can
specify that the list be sorted by the built-in intent signature in
either ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBuiltInIntents in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

