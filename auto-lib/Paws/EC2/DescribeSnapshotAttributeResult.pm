
package Paws::EC2::DescribeSnapshotAttributeResult;
  use Moose;
  has CreateVolumePermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CreateVolumePermission]', request_name => 'createVolumePermission', traits => ['NameInRequest',]);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshotAttributeResult

=head1 ATTRIBUTES


=head2 CreateVolumePermissions => ArrayRef[L<Paws::EC2::CreateVolumePermission>]

A list of permissions for creating volumes from the snapshot.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

A list of product codes.


=head2 SnapshotId => Str

The ID of the EBS snapshot.


=head2 _request_id => Str


=cut

