
package Paws::EC2::DescribeSnapshotAttributeResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CreateVolumePermission EC2_ProductCode/;
  has CreateVolumePermissions => (is => 'ro', isa => ArrayRef[EC2_CreateVolumePermission]);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has SnapshotId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 },
               'CreateVolumePermissions' => {
                                              'class' => 'Paws::EC2::CreateVolumePermission',
                                              'type' => 'ArrayRef[EC2_CreateVolumePermission]'
                                            },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ProductCodes' => 'productCodes',
                       'CreateVolumePermissions' => 'createVolumePermission',
                       'SnapshotId' => 'snapshotId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshotAttributeResult

=head1 ATTRIBUTES


=head2 CreateVolumePermissions => ArrayRef[EC2_CreateVolumePermission]

The users and groups that have the permissions for creating volumes
from the snapshot.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

The product codes.


=head2 SnapshotId => Str

The ID of the EBS snapshot.


=head2 _request_id => Str


=cut

