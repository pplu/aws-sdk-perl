
package Paws::EBS::StartSnapshotResponse;
  use Moose;
  has BlockSize => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has ParentSnapshotId => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EBS::Tag]');
  has VolumeSize => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::StartSnapshotResponse

=head1 ATTRIBUTES


=head2 BlockSize => Int

The size of the blocks in the snapshot, in bytes.


=head2 Description => Str

The description of the snapshot.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
KMS) customer master key (CMK) used to encrypt the snapshot.


=head2 OwnerId => Str

The AWS account ID of the snapshot owner.


=head2 ParentSnapshotId => Str

The ID of the parent snapshot.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 StartTime => Str

The timestamp when the snapshot was created.


=head2 Status => Str

The status of the snapshot.

Valid values are: C<"completed">, C<"pending">, C<"error">
=head2 Tags => ArrayRef[L<Paws::EBS::Tag>]

The tags applied to the snapshot. You can specify up to 50 tags per
snapshot. For more information, see Tagging your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 VolumeSize => Int

The size of the volume, in GiB.


=head2 _request_id => Str


=cut

