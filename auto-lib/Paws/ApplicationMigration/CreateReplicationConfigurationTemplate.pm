
package Paws::ApplicationMigration::CreateReplicationConfigurationTemplate;
  use Moose;
  has AssociateDefaultSecurityGroup => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associateDefaultSecurityGroup', required => 1);
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling', required => 1);
  has CreatePublicIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createPublicIP', required => 1);
  has DataPlaneRouting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataPlaneRouting', required => 1);
  has DefaultLargeStagingDiskType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLargeStagingDiskType', required => 1);
  has EbsEncryption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryption', required => 1);
  has EbsEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ebsEncryptionKeyArn');
  has ReplicationServerInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationServerInstanceType', required => 1);
  has ReplicationServersSecurityGroupsIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationServersSecurityGroupsIDs', required => 1);
  has StagingAreaSubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAreaSubnetId', required => 1);
  has StagingAreaTags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'stagingAreaTags', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has UseDedicatedReplicationServer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDedicatedReplicationServer', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationConfigurationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateReplicationConfigurationTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ReplicationConfigurationTemplate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::CreateReplicationConfigurationTemplate - Arguments for method CreateReplicationConfigurationTemplate on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationConfigurationTemplate on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method CreateReplicationConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationConfigurationTemplate.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ReplicationConfigurationTemplate =
      $mgn->CreateReplicationConfigurationTemplate(
      AssociateDefaultSecurityGroup       => 1,
      BandwidthThrottling                 => 1,
      CreatePublicIP                      => 1,
      DataPlaneRouting                    => 'PRIVATE_IP',
      DefaultLargeStagingDiskType         => 'GP2',
      EbsEncryption                       => 'NONE',
      ReplicationServerInstanceType       => 'MyEC2InstanceType',
      ReplicationServersSecurityGroupsIDs => [
        'MySecurityGroupID', ...    # max: 255
      ],
      StagingAreaSubnetId => 'MySubnetID',
      StagingAreaTags     => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },
      UseDedicatedReplicationServer => 1,
      EbsEncryptionKeyArn           => 'MyARN',    # OPTIONAL
      Tags                          => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/CreateReplicationConfigurationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociateDefaultSecurityGroup => Bool

Request to associate the default Application Migration Service Security
group with the Replication Settings template.



=head2 B<REQUIRED> BandwidthThrottling => Int

Request to configure bandwidth throttling during Replication Settings
template creation.



=head2 B<REQUIRED> CreatePublicIP => Bool

Request to create Public IP during Replication Settings template
creation.



=head2 B<REQUIRED> DataPlaneRouting => Str

Request to configure data plane routing during Replication Settings
template creation.

Valid values are: C<"PRIVATE_IP">, C<"PUBLIC_IP">

=head2 B<REQUIRED> DefaultLargeStagingDiskType => Str

Request to configure the Staging Disk EBS volume type to "gp2" during
Replication Settings template creation.

Valid values are: C<"GP2">, C<"ST1">

=head2 B<REQUIRED> EbsEncryption => Str

Request to configure EBS enryption during Replication Settings template
creation.

Valid values are: C<"NONE">, C<"DEFAULT">, C<"CUSTOM">

=head2 EbsEncryptionKeyArn => Str

Request to configure an EBS enryption key during Replication Settings
template creation.



=head2 B<REQUIRED> ReplicationServerInstanceType => Str

Request to configure the Replication Server instance type during
Replication Settings template creation.



=head2 B<REQUIRED> ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

Request to configure the Replication Server Secuirity group ID during
Replication Settings template creation.



=head2 B<REQUIRED> StagingAreaSubnetId => Str

Request to configure the Staging Area subnet ID during Replication
Settings template creation.



=head2 B<REQUIRED> StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

Request to configure Staiging Area tags during Replication Settings
template creation.



=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Request to configure tags during Replication Settings template
creation.



=head2 B<REQUIRED> UseDedicatedReplicationServer => Bool

Request to use Dedicated Replication Servers during Replication
Settings template creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationConfigurationTemplate in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

