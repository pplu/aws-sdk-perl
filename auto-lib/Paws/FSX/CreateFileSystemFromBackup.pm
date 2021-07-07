
package Paws::FSX::CreateFileSystemFromBackup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemLustreConfiguration');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageType => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFileSystemFromBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateFileSystemFromBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystemFromBackup - Arguments for method CreateFileSystemFromBackup on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFileSystemFromBackup on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateFileSystemFromBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFileSystemFromBackup.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateFileSystemFromBackupResponse = $fsx->CreateFileSystemFromBackup(
      BackupId  => 'MyBackupId',
      SubnetIds => [
        'MySubnetId', ...    # min: 15, max: 24
      ],
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      KmsKeyId            => 'MyKmsKeyId',              # OPTIONAL
      LustreConfiguration => {
        AutoImportPolicy => 'NONE',   # values: NONE, NEW, NEW_CHANGED; OPTIONAL
        AutomaticBackupRetentionDays  => 1,    # max: 90; OPTIONAL
        CopyTagsToBackups             => 1,    # OPTIONAL
        DailyAutomaticBackupStartTime =>
          'MyDailyTime',                       # min: 5, max: 5; OPTIONAL
        DeploymentType =>
          'SCRATCH_1',    # values: SCRATCH_1, SCRATCH_2, PERSISTENT_1; OPTIONAL
        DriveCacheType => 'NONE',             # values: NONE, READ; OPTIONAL
        ExportPath     => 'MyArchivePath',    # min: 3, max: 4357; OPTIONAL
        ImportPath     => 'MyArchivePath',    # min: 3, max: 4357; OPTIONAL
        ImportedFileChunkSize      => 1,      # min: 1, max: 512000; OPTIONAL
        PerUnitStorageThroughput   => 1,      # min: 12, max: 200; OPTIONAL
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
      SecurityGroupIds => [
        'MySecurityGroupId', ...    # min: 11, max: 20
      ],    # OPTIONAL
      StorageType => 'SSD',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      WindowsConfiguration => {
        ThroughputCapacity => 1,                  # min: 8, max: 2048
        ActiveDirectoryId  => 'MyDirectoryId',    # min: 12, max: 12; OPTIONAL
        Aliases            => [
          'MyAlternateDNSName', ...               # min: 4, max: 253
        ],    # max: 50; OPTIONAL
        AutomaticBackupRetentionDays  => 1,    # max: 90; OPTIONAL
        CopyTagsToBackups             => 1,    # OPTIONAL
        DailyAutomaticBackupStartTime =>
          'MyDailyTime',                       # min: 5, max: 5; OPTIONAL
        DeploymentType =>
          'MULTI_AZ_1', # values: MULTI_AZ_1, SINGLE_AZ_1, SINGLE_AZ_2; OPTIONAL
        PreferredSubnetId => 'MySubnetId',    # min: 15, max: 24
        SelfManagedActiveDirectoryConfiguration => {
          DnsIps => [
            'MyIpAddress', ...                # min: 7, max: 15
          ],    # min: 1, max: 2
          DomainName =>
            'MyActiveDirectoryFullyQualifiedName',    # min: 1, max: 255
          Password => 'MyDirectoryPassword',          # min: 1, max: 256
          UserName => 'MyDirectoryUserName',          # min: 1, max: 256
          FileSystemAdministratorsGroup =>
            'MyFileSystemAdministratorsGroupName',  # min: 1, max: 256; OPTIONAL
          OrganizationalUnitDistinguishedName =>
            'MyOrganizationalUnitDistinguishedName'
          ,    # min: 1, max: 2000; OPTIONAL
        },    # OPTIONAL
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FileSystem = $CreateFileSystemFromBackupResponse->FileSystem;

    # Returns a L<Paws::FSX::CreateFileSystemFromBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateFileSystemFromBackup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str





=head2 ClientRequestToken => Str

A string of up to 64 ASCII characters that Amazon FSx uses to ensure
idempotent creation. This string is automatically filled on your behalf
when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.



=head2 KmsKeyId => Str





=head2 LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>





=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs for the security groups that apply to the specified
network interfaces created for file system access. These security
groups apply to all network interfaces. This value isn't returned in
later DescribeFileSystem requests.



=head2 StorageType => Str

Sets the storage type for the Windows file system you're creating from
a backup. Valid values are C<SSD> and C<HDD>.

=over

=item *

Set to C<SSD> to use solid state drive storage. Supported on all
Windows deployment types.

=item *

Set to C<HDD> to use hard disk drive storage. Supported on
C<SINGLE_AZ_2> and C<MULTI_AZ_1> Windows file system deployment types.

=back

Default value is C<SSD>.

HDD and SSD storage types have different minimum storage capacity
requirements. A restored file system's storage capacity is tied to the
file system that was backed up. You can create a file system that uses
HDD storage from a backup of a file system that used SSD storage only
if the original SSD file system had a storage capacity of at least 2000
GiB.

Valid values are: C<"SSD">, C<"HDD">

=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

Specifies the IDs of the subnets that the file system will be
accessible from. For Windows C<MULTI_AZ_1> file system deployment
types, provide exactly two subnet IDs, one for the preferred file
server and one for the standby file server. You specify one of these
subnets as the preferred subnet using the C<WindowsConfiguration E<gt>
PreferredSubnetID> property.

For Windows C<SINGLE_AZ_1> and C<SINGLE_AZ_2> deployment types and
Lustre file systems, provide exactly one subnet ID. The file server is
launched in that subnet's Availability Zone.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

The tags to be applied to the file system at file system creation. The
key value of the C<Name> tag appears in the console as the file system
name.



=head2 WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>

The configuration for this Microsoft Windows file system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystemFromBackup in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

