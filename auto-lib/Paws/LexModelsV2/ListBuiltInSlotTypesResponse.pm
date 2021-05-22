
package Paws::LexModelsV2::ListBuiltInSlotTypesResponse;
  use Moose;
  has BuiltInSlotTypeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BuiltInSlotTypeSummary]', traits => ['NameInRequest'], request_name => 'builtInSlotTypeSummaries');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBuiltInSlotTypesResponse

=head1 ATTRIBUTES


=head2 BuiltInSlotTypeSummaries => ArrayRef[L<Paws::LexModelsV2::BuiltInSlotTypeSummary>]

Summary information for the built-in slot types that meet the filter
criteria specified in the request. The length of the list is specified
in the C<maxResults> parameter of the request. If there are more slot
types available, the C<nextToken> field contains a token to get the
next page of results.


=head2 LocaleId => Str

The language and locale of the slot types in the list.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListBuiltInSlotTypes> operation. If the C<nextToken>
field is present, you send the contents as the C<nextToken> parameter
of a C<LIstBuiltInSlotTypes> operation request to get the next page of
results.


=head2 _request_id => Str


=cut

