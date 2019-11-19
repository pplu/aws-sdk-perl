# Generated from json/callresult_class.tt

package Paws::SSM::GetInventorySchemaResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InventoryItemSchema/;
  has NextToken => (is => 'ro', isa => Str);
  has Schemas => (is => 'ro', isa => ArrayRef[SSM_InventoryItemSchema]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Schemas' => {
                              'class' => 'Paws::SSM::InventoryItemSchema',
                              'type' => 'ArrayRef[SSM_InventoryItemSchema]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetInventorySchemaResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Schemas => ArrayRef[SSM_InventoryItemSchema]

Inventory schemas returned by the request.


=head2 _request_id => Str


=cut

1;