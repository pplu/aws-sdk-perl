
package Paws::ApplicationMigration::ReplicationConfigurationTemplate;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AssociateDefaultSecurityGroup => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associateDefaultSecurityGroup');
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling');
  has CreatePublicIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createPublicIP');
  has DataPlaneRouting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataPlaneRouting');
  has DefaultLargeStagingDiskType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLargeStagingDiskType');
  has EbsEncryption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryption');
  has EbsEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryptionKeyArn');
  has ReplicationConfigurationTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationConfigurationTemplateID', required => 1);
  has ReplicationServerInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationServerInstanceType');
  has ReplicationServersSecurityGroupsIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationServersSecurityGroupsIDs');
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId');
  has StagingAreaTags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ReplicationConfigurationTemplate

=head1 ATTRIBUTES


=head2 Arn => Str

Replication Configuration template ARN.


=head2 AssociateDefaultSecurityGroup => Bool

Replication Configuration template associate default Application
Migration Service Security group.


=head2 BandwidthThrottling => Int

Replication Configuration template bandwidth throtting.


=head2 CreatePublicIP => Bool

Replication Configuration template create Public IP.


=head2 DataPlaneRouting => Str

Replication Configuration template data plane routing.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">
=head2 DefaultLargeStagingDiskType => Str

Replication Configuration template use dedault large Staging Disk type.

Valid values are: C<"GP2">, C<"ST1">
=head2 EbsEncryption => Str

Replication Configuration template EBS encryption.

Valid values are: C<"DEFAULT">, C<"CUSTOM">
=head2 EbsEncryptionKeyArn => Str

Replication Configuration template EBS encryption key ARN.


=head2 B<REQUIRED> ReplicationConfigurationTemplateID => Str

Replication Configuration template template ID.


=head2 ReplicationServerInstanceType => Str

Replication Configuration template server instance type.


=head2 ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

Replication Configuration template server Security Groups IDs.


=head2 StagingAreaSubnetId => Str

Replication Configuration template Staging Area subnet ID.


=head2 StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

Replication Configuration template Staging Area Tags.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Replication Configuration template Tags.


=head2 UseDedicatedReplicationServer => Bool

Replication Configuration template use Dedicated Replication Server.


=head2 _request_id => Str


=cut

