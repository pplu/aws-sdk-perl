
package Paws::LexModels::GetSlotTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SlotTypes => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::SlotTypeMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetSlotTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, it includes a pagination token that you
can specify in your next request to fetch the next page of slot types.


=head2 SlotTypes => ArrayRef[L<Paws::LexModels::SlotTypeMetadata>]

An array of objects, one for each slot type, that provides information
such as the name of the slot type, the version, and a description.


=head2 _request_id => Str


=cut

