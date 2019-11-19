# Generated from json/callresult_class.tt

package Paws::SSM::ListInventoryEntriesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InventoryItemEntry/;
  has CaptureTime => (is => 'ro', isa => Str);
  has Entries => (is => 'ro', isa => ArrayRef[SSM_InventoryItemEntry]);
  has InstanceId => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has SchemaVersion => (is => 'ro', isa => Str);
  has TypeName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CaptureTime' => {
                                  'type' => 'Str'
                                },
               'TypeName' => {
                               'type' => 'Str'
                             },
               'Entries' => {
                              'class' => 'Paws::SSM::InventoryItemEntry',
                              'type' => 'ArrayRef[SSM_InventoryItemEntry]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'SchemaVersion' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListInventoryEntriesResult

=head1 ATTRIBUTES


=head2 CaptureTime => Str

The time that inventory information was collected for the instance(s).


=head2 Entries => ArrayRef[SSM_InventoryItemEntry]

A list of inventory items on the instance(s).


=head2 InstanceId => Str

The instance ID targeted by the request to query inventory information.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 SchemaVersion => Str

The inventory schema version used by the instance(s).


=head2 TypeName => Str

The type of inventory item returned by the request.


=head2 _request_id => Str


=cut

1;