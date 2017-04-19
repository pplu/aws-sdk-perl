
package Paws::LexModels::GetSlotTypeVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SlotTypes => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::SlotTypeMetadata]', traits => ['NameInRequest'], request_name => 'slotTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetSlotTypeVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token for fetching the next page of slot type versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.


=head2 SlotTypes => ArrayRef[L<Paws::LexModels::SlotTypeMetadata>]

An array of C<SlotTypeMetadata> objects, one for each numbered version
of the slot type plus one for the C<$LATEST> version.


=head2 _request_id => Str


=cut

