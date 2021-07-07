
package Paws::ApplicationMigration::UpdateReplicationConfigurationTemplate;
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
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReplicationConfigurationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateReplicationConfigurationTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ReplicationConfigurationTemplate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::UpdateReplicationConfigurationTemplate - Arguments for method UpdateReplicationConfigurationTemplate on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReplicationConfigurationTemplate on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method UpdateReplicationConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReplicationConfigurationTemplate.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ReplicationConfigurationTemplate =
      $mgn->UpdateReplicationConfigurationTemplate(
      ReplicationConfigurationTemplateID =>
        'MyReplicationConfigurationTemplateID',
      Arn                                 => 'MyARN',                # OPTIONAL
      AssociateDefaultSecurityGroup       => 1,                      # OPTIONAL
      BandwidthThrottling                 => 1,                      # OPTIONAL
      CreatePublicIP                      => 1,                      # OPTIONAL
      DataPlaneRouting                    => 'PRIVATE_IP',           # OPTIONAL
      DefaultLargeStagingDiskType         => 'GP2',                  # OPTIONAL
      EbsEncryption                       => 'NONE',                 # OPTIONAL
      EbsEncryptionKeyArn                 => 'MyARN',                # OPTIONAL
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
    my $Arn = $ReplicationConfigurationTemplate->Arn;
    my $AssociateDefaultSecurityGroup =
      $ReplicationConfigurationTemplate->AssociateDefaultSecurityGroup;
    my $BandwidthThrottling =
      $ReplicationConfigurationTemplate->BandwidthThrottling;
    my $CreatePublicIP   = $ReplicationConfigurationTemplate->CreatePublicIP;
    my $DataPlaneRouting = $ReplicationConfigurationTemplate->DataPlaneRouting;
    my $DefaultLargeStagingDiskType =
      $ReplicationConfigurationTemplate->DefaultLargeStagingDiskType;
    my $EbsEncryption = $ReplicationConfigurationTemplate->EbsEncryption;
    my $EbsEncryptionKeyArn =
      $ReplicationConfigurationTemplate->EbsEncryptionKeyArn;
    my $ReplicationConfigurationTemplateID =
      $ReplicationConfigurationTemplate->ReplicationConfigurationTemplateID;
    my $ReplicationServerInstanceType =
      $ReplicationConfigurationTemplate->ReplicationServerInstanceType;
    my $ReplicationServersSecurityGroupsIDs =
      $ReplicationConfigurationTemplate->ReplicationServersSecurityGroupsIDs;
    my $StagingAreaSubnetId =
      $ReplicationConfigurationTemplate->StagingAreaSubnetId;
    my $StagingAreaTags = $ReplicationConfigurationTemplate->StagingAreaTags;
    my $Tags            = $ReplicationConfigurationTemplate->Tags;
    my $UseDedicatedReplicationServer =
      $ReplicationConfigurationTemplate->UseDedicatedReplicationServer;

# Returns a L<Paws::ApplicationMigration::ReplicationConfigurationTemplate> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/UpdateReplicationConfigurationTemplate>

=head1 ATTRIBUTES


=head2 Arn => Str

Update replication configuration template ARN request.



=head2 AssociateDefaultSecurityGroup => Bool

Update replication configuration template associate default Application
Migration Service Security group request.



=head2 BandwidthThrottling => Int

Update replication configuration template bandwidth throttling request.



=head2 CreatePublicIP => Bool

Update replication configuration template create Public IP request.



=head2 DataPlaneRouting => Str

Update replication configuration template data plane routing request.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">

=head2 DefaultLargeStagingDiskType => Str

Update replication configuration template use default large Staging
Disk type request.

Valid values are: C<"GP2">, C<"ST1">

=head2 EbsEncryption => Str

Update replication configuration template EBS encryption request.

Valid values are: C<"NONE">, C<"DEFAULT">, C<"CUSTOM">

=head2 EbsEncryptionKeyArn => Str

Update replication configuration template EBS encryption key ARN
request.



=head2 B<REQUIRED> ReplicationConfigurationTemplateID => Str

Update replication configuration template template ID request.



=head2 ReplicationServerInstanceType => Str

Update replication configuration template Replication Server instance
type request.



=head2 ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

Update replication configuration template Replication Server Security
groups IDs request.



=head2 StagingAreaSubnetId => Str

Update replication configuration template Staging Area subnet ID
request.



=head2 StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

Update replication configuration template Staging Area Tags request.



=head2 UseDedicatedReplicationServer => Bool

Update replication configuration template use dedicated Replication
Server request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReplicationConfigurationTemplate in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

