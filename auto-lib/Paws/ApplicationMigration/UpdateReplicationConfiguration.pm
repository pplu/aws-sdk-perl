
package Paws::ApplicationMigration::UpdateReplicationConfiguration;
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
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId');
  has StagingAreaTags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReplicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateReplicationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ReplicationConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::UpdateReplicationConfiguration - Arguments for method UpdateReplicationConfiguration on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReplicationConfiguration on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method UpdateReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReplicationConfiguration.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ReplicationConfiguration = $mgn->UpdateReplicationConfiguration(
      SourceServerID                => 'MySourceServerID',
      AssociateDefaultSecurityGroup => 1,                         # OPTIONAL
      BandwidthThrottling           => 1,                         # OPTIONAL
      CreatePublicIP                => 1,                         # OPTIONAL
      DataPlaneRouting              => 'PRIVATE_IP',              # OPTIONAL
      DefaultLargeStagingDiskType   => 'GP2',                     # OPTIONAL
      EbsEncryption                 => 'NONE',                    # OPTIONAL
      EbsEncryptionKeyArn           => 'MyARN',                   # OPTIONAL
      Name                          => 'MySmallBoundedString',    # OPTIONAL
      ReplicatedDisks               => [
        {
          DeviceName      => 'MyBoundedString',    # max: 256; OPTIONAL
          Iops            => 1,
          IsBootDisk      => 1,
          StagingDiskType =>
            'AUTO',    # values: AUTO, GP2, IO1, SC1, ST1, STANDARD; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ReplicationServerInstanceType       => 'MyEC2InstanceType',    # OPTIONAL
      ReplicationServersSecurityGroupsIDs => [
        'MySecurityGroupID', ...                                     # max: 255
      ],    # OPTIONAL
      StagingAreaSubnetId => 'MySubnetID',    # OPTIONAL
      StagingAreaTags     => {
        'MyTagKey' => 'MyTagValue',           # key: max: 256, value: max: 256
      },    # OPTIONAL
      UseDedicatedReplicationServer => 1,    # OPTIONAL
    );

    # Results:
    my $AssociateDefaultSecurityGroup =
      $ReplicationConfiguration->AssociateDefaultSecurityGroup;
    my $BandwidthThrottling = $ReplicationConfiguration->BandwidthThrottling;
    my $CreatePublicIP      = $ReplicationConfiguration->CreatePublicIP;
    my $DataPlaneRouting    = $ReplicationConfiguration->DataPlaneRouting;
    my $DefaultLargeStagingDiskType =
      $ReplicationConfiguration->DefaultLargeStagingDiskType;
    my $EbsEncryption       = $ReplicationConfiguration->EbsEncryption;
    my $EbsEncryptionKeyArn = $ReplicationConfiguration->EbsEncryptionKeyArn;
    my $Name                = $ReplicationConfiguration->Name;
    my $ReplicatedDisks     = $ReplicationConfiguration->ReplicatedDisks;
    my $ReplicationServerInstanceType =
      $ReplicationConfiguration->ReplicationServerInstanceType;
    my $ReplicationServersSecurityGroupsIDs =
      $ReplicationConfiguration->ReplicationServersSecurityGroupsIDs;
    my $SourceServerID      = $ReplicationConfiguration->SourceServerID;
    my $StagingAreaSubnetId = $ReplicationConfiguration->StagingAreaSubnetId;
    my $StagingAreaTags     = $ReplicationConfiguration->StagingAreaTags;
    my $UseDedicatedReplicationServer =
      $ReplicationConfiguration->UseDedicatedReplicationServer;

    # Returns a L<Paws::ApplicationMigration::ReplicationConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/UpdateReplicationConfiguration>

=head1 ATTRIBUTES


=head2 AssociateDefaultSecurityGroup => Bool

Update replication configuration associate default Application
Migration Service Security group request.



=head2 BandwidthThrottling => Int

Update replication configuration bandwidth throttling request.



=head2 CreatePublicIP => Bool

Update replication configuration create Public IP request.



=head2 DataPlaneRouting => Str

Update replication configuration data plane routing request.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">

=head2 DefaultLargeStagingDiskType => Str

Update replication configuration use default large Staging Disk type
request.

Valid values are: C<"GP2">, C<"ST1">

=head2 EbsEncryption => Str

Update replication configuration EBS encryption request.

Valid values are: C<"NONE">, C<"DEFAULT">, C<"CUSTOM">

=head2 EbsEncryptionKeyArn => Str

Update replication configuration EBS encryption key ARN request.



=head2 Name => Str

Update replication configuration name request.



=head2 ReplicatedDisks => ArrayRef[L<Paws::ApplicationMigration::ReplicationConfigurationReplicatedDisk>]

Update replication configuration replicated disks request.



=head2 ReplicationServerInstanceType => Str

Update replication configuration Replication Server instance type
request.



=head2 ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

Update replication configuration Replication Server Security Groups IDs
request.



=head2 B<REQUIRED> SourceServerID => Str

Update replication configuration Source Server ID request.



=head2 StagingAreaSubnetId => Str

Update replication configuration Staging Area subnet request.



=head2 StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

Update replication configuration Staging Area Tags request.



=head2 UseDedicatedReplicationServer => Bool

Update replication configuration use dedicated Replication Server
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReplicationConfiguration in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

