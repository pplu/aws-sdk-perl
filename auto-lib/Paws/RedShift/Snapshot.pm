package Paws::RedShift::Snapshot;
  use Moose;
  has AccountsWithRestoreAccess => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::AccountWithRestoreAccess]', request_name => 'AccountWithRestoreAccess', traits => ['NameInRequest']);
  has ActualIncrementalBackupSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has CurrentBackupRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has DBName => (is => 'ro', isa => 'Str');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Int');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has EncryptedWithHSM => (is => 'ro', isa => 'Bool');
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool');
  has EstimatedSecondsToCompletion => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has ManualSnapshotRemainingDays => (is => 'ro', isa => 'Int');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RestorableNodeTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'NodeType', traits => ['NameInRequest']);
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotRetentionStartTime => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest']);
  has TotalBackupSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::Snapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::Snapshot object:

  $service_obj->Method(Att1 => { AccountsWithRestoreAccess => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::Snapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountsWithRestoreAccess

=head1 DESCRIPTION

Describes a snapshot.

=head1 ATTRIBUTES


=head2 AccountsWithRestoreAccess => ArrayRef[L<Paws::RedShift::AccountWithRestoreAccess>]

  A list of the AWS customer accounts authorized to restore the snapshot.
Returns C<null> if no accounts are authorized. Visible only to the
snapshot owner.


=head2 ActualIncrementalBackupSizeInMegaBytes => Num

  The size of the incremental backup.


=head2 AvailabilityZone => Str

  The Availability Zone in which the cluster was created.


=head2 BackupProgressInMegaBytes => Num

  The number of megabytes that have been transferred to the snapshot
backup.


=head2 ClusterCreateTime => Str

  The time (UTC) when the cluster was originally created.


=head2 ClusterIdentifier => Str

  The identifier of the cluster for which the snapshot was taken.


=head2 ClusterVersion => Str

  The version ID of the Amazon Redshift engine that is running on the
cluster.


=head2 CurrentBackupRateInMegaBytesPerSecond => Num

  The number of megabytes per second being transferred to the snapshot
backup. Returns C<0> for a completed backup.


=head2 DBName => Str

  The name of the database that was created when the cluster was created.


=head2 ElapsedTimeInSeconds => Int

  The amount of time an in-progress snapshot backup has been running, or
the amount of time it took a completed backup to finish.


=head2 Encrypted => Bool

  If C<true>, the data in the snapshot is encrypted at rest.


=head2 EncryptedWithHSM => Bool

  A boolean that indicates whether the snapshot data is encrypted using
the HSM keys of the source cluster. C<true> indicates that the data is
encrypted using HSM keys.


=head2 EnhancedVpcRouting => Bool

  An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing
(http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false


=head2 EstimatedSecondsToCompletion => Int

  The estimate of the time remaining before the snapshot backup will
complete. Returns C<0> for a completed backup.


=head2 KmsKeyId => Str

  The AWS Key Management Service (KMS) key ID of the encryption key that
was used to encrypt data in the cluster from which the snapshot was
taken.


=head2 MaintenanceTrackName => Str

  The name of the maintenance track for the snapshot.


=head2 ManualSnapshotRemainingDays => Int

  The number of days until a manual snapshot will pass its retention
period.


=head2 ManualSnapshotRetentionPeriod => Int

  The number of days that a manual snapshot is retained. If the value is
-1, the manual snapshot is retained indefinitely.

The value must be either -1 or an integer between 1 and 3,653.


=head2 MasterUsername => Str

  The master user name for the cluster.


=head2 NodeType => Str

  The node type of the nodes in the cluster.


=head2 NumberOfNodes => Int

  The number of nodes in the cluster.


=head2 OwnerAccount => Str

  For manual snapshots, the AWS customer account used to create or copy
the snapshot. For automatic snapshots, the owner of the cluster. The
owner can perform all snapshot actions, such as sharing a manual
snapshot.


=head2 Port => Int

  The port that the cluster is listening on.


=head2 RestorableNodeTypes => ArrayRef[Str|Undef]

  The list of node types that this cluster snapshot is able to restore
into.


=head2 SnapshotCreateTime => Str

  The time (in UTC format) when Amazon Redshift began the snapshot. A
snapshot contains a copy of the cluster data as of this exact time.


=head2 SnapshotIdentifier => Str

  The snapshot identifier that is provided in the request.


=head2 SnapshotRetentionStartTime => Str

  A timestamp representing the start of the retention period for the
snapshot.


=head2 SnapshotType => Str

  The snapshot type. Snapshots created using CreateClusterSnapshot and
CopyClusterSnapshot are of type "manual".


=head2 SourceRegion => Str

  The source region from which the snapshot was copied.


=head2 Status => Str

  The snapshot status. The value of the status depends on the API
operation used:

=over

=item *

CreateClusterSnapshot and CopyClusterSnapshot returns status as
"creating".

=item *

DescribeClusterSnapshots returns status as "creating", "available",
"final snapshot", or "failed".

=item *

DeleteClusterSnapshot returns status as "deleted".

=back



=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

  The list of tags for the cluster snapshot.


=head2 TotalBackupSizeInMegaBytes => Num

  The size of the complete set of backup data that would be used to
restore the cluster.


=head2 VpcId => Str

  The VPC identifier of the cluster if the snapshot is from a cluster in
a VPC. Otherwise, this field is not in the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

