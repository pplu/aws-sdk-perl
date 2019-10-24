# Generated from json/callresult_class.tt

package Paws::SSM::GetInventoryResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InventoryResultEntity/;
  has Entities => (is => 'ro', isa => ArrayRef[SSM_InventoryResultEntity]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Entities' => {
                               'class' => 'Paws::SSM::InventoryResultEntity',
                               'type' => 'ArrayRef[SSM_InventoryResultEntity]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetInventoryResult

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[SSM_InventoryResultEntity]

Collection of inventory entities such as a collection of instance
inventory.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;