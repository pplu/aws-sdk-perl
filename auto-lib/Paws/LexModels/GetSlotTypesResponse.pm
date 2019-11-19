
package Paws::LexModels::GetSlotTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_SlotTypeMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has SlotTypes => (is => 'ro', isa => ArrayRef[LexModels_SlotTypeMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SlotTypes' => 'slotTypes',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SlotTypes' => {
                                'class' => 'Paws::LexModels::SlotTypeMetadata',
                                'type' => 'ArrayRef[LexModels_SlotTypeMetadata]'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetSlotTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, it includes a pagination token that you
can specify in your next request to fetch the next page of slot types.


=head2 SlotTypes => ArrayRef[LexModels_SlotTypeMetadata]

An array of objects, one for each slot type, that provides information
such as the name of the slot type, the version, and a description.


=head2 _request_id => Str


=cut

