
package Paws::LexModelsV2::ListBuiltInSlotTypes;
  use Moose;
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::BuiltInSlotTypeSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuiltInSlotTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/builtins/locales/{localeId}/slottypes/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBuiltInSlotTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBuiltInSlotTypes - Arguments for method ListBuiltInSlotTypes on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBuiltInSlotTypes on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBuiltInSlotTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBuiltInSlotTypes.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBuiltInSlotTypesResponse = $models - v2 -lex->ListBuiltInSlotTypes(
      LocaleId   => 'MyLocaleId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'SlotTypeSignature',    # values: SlotTypeSignature
        Order     => 'Ascending',            # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BuiltInSlotTypeSummaries =
      $ListBuiltInSlotTypesResponse->BuiltInSlotTypeSummaries;
    my $LocaleId  = $ListBuiltInSlotTypesResponse->LocaleId;
    my $NextToken = $ListBuiltInSlotTypesResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListBuiltInSlotTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBuiltInSlotTypes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the slot types to list.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MaxResults => Int

The maximum number of built-in slot types to return in each page of
results. If there are fewer results than the max page size, only the
actual number of results are returned.



=head2 NextToken => Str

If the response from the C<ListBuiltInSlotTypes> operation contains
more results than specified in the C<maxResults> parameter, a token is
returned in the response. Use that token in the C<nextToken> parameter
to return the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::BuiltInSlotTypeSortBy>

Determines the sort order for the response from the
C<ListBuiltInSlotTypes> operation. You can choose to sort by the slot
type signature in either ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBuiltInSlotTypes in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

