# Generated from json/callresult_class.tt

package Paws::SSM::DescribeInventoryDeletionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InventoryDeletionStatusItem/;
  has InventoryDeletions => (is => 'ro', isa => ArrayRef[SSM_InventoryDeletionStatusItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InventoryDeletions' => {
                                         'class' => 'Paws::SSM::InventoryDeletionStatusItem',
                                         'type' => 'ArrayRef[SSM_InventoryDeletionStatusItem]'
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

Paws::SSM::DescribeInventoryDeletionsResult

=head1 ATTRIBUTES


=head2 InventoryDeletions => ArrayRef[SSM_InventoryDeletionStatusItem]

A list of status items for deleted inventory.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;