
package Paws::FSX::CreateFileSystem;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemType => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemLustreConfiguration');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageCapacity => (is => 'ro', isa => 'Int', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateFileSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystem - Arguments for method CreateFileSystem on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFileSystem on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFileSystem.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateFileSystemResponse = $fsx->CreateFileSystem(
      FileSystemType  => 'WINDOWS',
      StorageCapacity => 1,
      SubnetIds       => [
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
        DataCompressionType => 'NONE',         # values: NONE, LZ4; OPTIONAL
        DeploymentType      =>
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
        AuditLogConfiguration => {
          FileAccessAuditLogLevel => 'DISABLED'
          ,  # values: DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
          FileShareAccessAuditLogLevel => 'DISABLED'
          ,  # values: DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
          AuditLogDestination => 'MyGeneralARN',   # min: 8, max: 1024; OPTIONAL
        },    # OPTIONAL
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
    my $FileSystem = $CreateFileSystemResponse->FileSystem;

    # Returns a L<Paws::FSX::CreateFileSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateFileSystem>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A string of up to 64 ASCII characters that Amazon FSx uses to ensure
idempotent creation. This string is automatically filled on your behalf
when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.



=head2 B<REQUIRED> FileSystemType => Str

The type of Amazon FSx file system to create, either C<WINDOWS> or
C<LUSTRE>.

Valid values are: C<"WINDOWS">, C<"LUSTRE">

=head2 KmsKeyId => Str





=head2 LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>





=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs specifying the security groups to apply to all network
interfaces created for file system access. This list isn't returned in
later requests to describe the file system.



=head2 B<REQUIRED> StorageCapacity => Int

Sets the storage capacity of the file system that you're creating.

For Lustre file systems:

=over

=item *

For C<SCRATCH_2> and C<PERSISTENT_1 SSD> deployment types, valid values
are 1200 GiB, 2400 GiB, and increments of 2400 GiB.

=item *

For C<PERSISTENT HDD> file systems, valid values are increments of 6000
GiB for 12 MB/s/TiB file systems and increments of 1800 GiB for 40
MB/s/TiB file systems.

=item *

For C<SCRATCH_1> deployment type, valid values are 1200 GiB, 2400 GiB,
and increments of 3600 GiB.

=back

For Windows file systems:

=over

=item *

If C<StorageType=SSD>, valid values are 32 GiB - 65,536 GiB (64 TiB).

=item *

If C<StorageType=HDD>, valid values are 2000 GiB - 65,536 GiB (64 TiB).

=back




=head2 StorageType => Str

Sets the storage type for the file system you're creating. Valid values
are C<SSD> and C<HDD>.

=over

=item *

Set to C<SSD> to use solid state drive storage. SSD is supported on all
Windows and Lustre deployment types.

=item *

Set to C<HDD> to use hard disk drive storage. HDD is supported on
C<SINGLE_AZ_2> and C<MULTI_AZ_1> Windows file system deployment types,
and on C<PERSISTENT> Lustre file system deployment types.

=back

Default value is C<SSD>. For more information, see Storage Type Options
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options)
in the I<Amazon FSx for Windows User Guide> and Multiple Storage
Options
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options)
in the I<Amazon FSx for Lustre User Guide>.

Valid values are: C<"SSD">, C<"HDD">

=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

Specifies the IDs of the subnets that the file system will be
accessible from. For Windows C<MULTI_AZ_1> file system deployment
types, provide exactly two subnet IDs, one for the preferred file
server and one for the standby file server. You specify one of these
subnets as the preferred subnet using the C<WindowsConfiguration E<gt>
PreferredSubnetID> property. For more information, see Availability and
durability: Single-AZ and Multi-AZ file systems
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html).

For Windows C<SINGLE_AZ_1> and C<SINGLE_AZ_2> file system deployment
types and Lustre file systems, provide exactly one subnet ID. The file
server is launched in that subnet's Availability Zone.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

The tags to apply to the file system being created. The key value of
the C<Name> tag appears in the console as the file system name.



=head2 WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>

The Microsoft Windows configuration for the file system being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

