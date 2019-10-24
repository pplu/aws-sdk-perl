
package Paws::LexModels::GetSlotTypeVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_SlotTypeMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has SlotTypes => (is => 'ro', isa => ArrayRef[LexModels_SlotTypeMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SlotTypes' => {
                                'class' => 'Paws::LexModels::SlotTypeMetadata',
                                'type' => 'ArrayRef[LexModels_SlotTypeMetadata]'
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

Paws::LexModels::GetSlotTypeVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token for fetching the next page of slot type versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.


=head2 SlotTypes => ArrayRef[LexModels_SlotTypeMetadata]

An array of C<SlotTypeMetadata> objects, one for each numbered version
of the slot type plus one for the C<$LATEST> version.


=head2 _request_id => Str


=cut

