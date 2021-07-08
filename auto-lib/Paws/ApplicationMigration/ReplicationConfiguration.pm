
package Paws::ApplicationMigration::ReplicationConfiguration;
  use Moose;
  has AssociateDefaultSecurityGroup => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associateDefaultSecurityGroup');
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling');
  has CreatePublicIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createPublicIP');
  has DataPlaneRouting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataPlaneRouting');
  has DefaultLargeStagingDiskType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLargeStagingDiskType');
  has EbsEncryption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryption');
  has EbsEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryptionKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReplicatedDisks => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::ReplicationConfigurationReplicatedDisk]', traits => ['NameInRequest'], request_name => 'replicatedDisks');
  has ReplicationServerInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationServerInstanceType');
  has ReplicationServersSecurityGroupsIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationServersSecurityGroupsIDs');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId');
  has StagingAreaTags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ReplicationConfiguration

=head1 ATTRIBUTES


=head2 AssociateDefaultSecurityGroup => Bool

Replication Configuration associate default Application Migration
Service Security Group.


=head2 BandwidthThrottling => Int

Replication Configuration set bandwidth throttling.


=head2 CreatePublicIP => Bool

Replication Configuration create Public IP.


=head2 DataPlaneRouting => Str

Replication Configuration data plane routing.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">
=head2 DefaultLargeStagingDiskType => Str

Replication Configuration use default large Staging Disks.

Valid values are: C<"GP2">, C<"ST1">
=head2 EbsEncryption => Str

Replication Configuration EBS encryption.

Valid values are: C<"DEFAULT">, C<"CUSTOM">
=head2 EbsEncryptionKeyArn => Str

Replication Configuration EBS encryption key ARN.


=head2 Name => Str

Replication Configuration name.


=head2 ReplicatedDisks => ArrayRef[L<Paws::ApplicationMigration::ReplicationConfigurationReplicatedDisk>]

Replication Configuration replicated disks.


=head2 ReplicationServerInstanceType => Str

Replication Configuration Replication Server instance type.


=head2 ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

Replication Configuration Replication Server Security Group IDs.


=head2 SourceServerID => Str

Replication Configuration Source Server ID.


=head2 StagingAreaSubnetId => Str

Replication Configuration Staging Area subnet ID.


=head2 StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

Replication Configuration Staging Area tags.


=head2 UseDedicatedReplicationServer => Bool

Replication Configuration use Dedicated Replication Server.


=head2 _request_id => Str


=cut

