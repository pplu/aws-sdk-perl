
package Paws::LexModels::GetBuiltinSlotTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SlotTypes => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BuiltinSlotTypeMetadata]', traits => ['NameInRequest'], request_name => 'slotTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinSlotTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, the response includes a pagination token
that you can use in your next request to fetch the next page of slot
types.


=head2 SlotTypes => ArrayRef[L<Paws::LexModels::BuiltinSlotTypeMetadata>]

An array of C<BuiltInSlotTypeMetadata> objects, one entry for each slot
type returned.


=head2 _request_id => Str


=cut

