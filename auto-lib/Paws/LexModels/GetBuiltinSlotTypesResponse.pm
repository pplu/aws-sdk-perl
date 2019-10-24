
package Paws::LexModels::GetBuiltinSlotTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_BuiltinSlotTypeMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has SlotTypes => (is => 'ro', isa => ArrayRef[LexModels_BuiltinSlotTypeMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SlotTypes' => {
                                'class' => 'Paws::LexModels::BuiltinSlotTypeMetadata',
                                'type' => 'ArrayRef[LexModels_BuiltinSlotTypeMetadata]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SlotTypes' => 'slotTypes',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinSlotTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, the response includes a pagination token
that you can use in your next request to fetch the next page of slot
types.


=head2 SlotTypes => ArrayRef[LexModels_BuiltinSlotTypeMetadata]

An array of C<BuiltInSlotTypeMetadata> objects, one entry for each slot
type returned.


=head2 _request_id => Str


=cut

