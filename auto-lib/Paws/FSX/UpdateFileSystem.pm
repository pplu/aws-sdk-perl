
package Paws::FSX::UpdateFileSystem;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileSystemLustreConfiguration');
  has StorageCapacity => (is => 'ro', isa => 'Int');
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateFileSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileSystem - Arguments for method UpdateFileSystem on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFileSystem on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFileSystem.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateFileSystemResponse = $fsx->UpdateFileSystem(
      FileSystemId        => 'MyFileSystemId',
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      LustreConfiguration => {
        AutoImportPolicy => 'NONE',   # values: NONE, NEW, NEW_CHANGED; OPTIONAL
        AutomaticBackupRetentionDays  => 1,    # max: 90; OPTIONAL
        DailyAutomaticBackupStartTime =>
          'MyDailyTime',                       # min: 5, max: 5; OPTIONAL
        DataCompressionType        => 'NONE',  # values: NONE, LZ4; OPTIONAL
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
      StorageCapacity      => 1,    # OPTIONAL
      WindowsConfiguration => {
        AuditLogConfiguration => {
          FileAccessAuditLogLevel => 'DISABLED'
          ,  # values: DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
          FileShareAccessAuditLogLevel => 'DISABLED'
          ,  # values: DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
          AuditLogDestination => 'MyGeneralARN',   # min: 8, max: 1024; OPTIONAL
        },    # OPTIONAL
        AutomaticBackupRetentionDays  => 1,    # max: 90; OPTIONAL
        DailyAutomaticBackupStartTime =>
          'MyDailyTime',                       # min: 5, max: 5; OPTIONAL
        SelfManagedActiveDirectoryConfiguration => {
          DnsIps => [
            'MyIpAddress', ...                 # min: 7, max: 15
          ],    # min: 1, max: 2; OPTIONAL
          Password => 'MyDirectoryPassword',    # min: 1, max: 256; OPTIONAL
          UserName => 'MyDirectoryUserName',    # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        ThroughputCapacity         => 1,    # min: 8, max: 2048; OPTIONAL
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FileSystem = $UpdateFileSystemResponse->FileSystem;

    # Returns a L<Paws::FSX::UpdateFileSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateFileSystem>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A string of up to 64 ASCII characters that Amazon FSx uses to ensure
idempotent updates. This string is automatically filled on your behalf
when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.



=head2 B<REQUIRED> FileSystemId => Str

Identifies the file system that you are updating.



=head2 LustreConfiguration => L<Paws::FSX::UpdateFileSystemLustreConfiguration>





=head2 StorageCapacity => Int

Use this parameter to increase the storage capacity of an Amazon FSx
file system. Specifies the storage capacity target value, GiB, to
increase the storage capacity for the file system that you're updating.
You cannot make a storage capacity increase request if there is an
existing storage capacity increase request in progress.

For Windows file systems, the storage capacity target value must be at
least 10 percent (%) greater than the current storage capacity value.
In order to increase storage capacity, the file system must have at
least 16 MB/s of throughput capacity.

For Lustre file systems, the storage capacity target value can be the
following:

=over

=item *

For C<SCRATCH_2> and C<PERSISTENT_1 SSD> deployment types, valid values
are in multiples of 2400 GiB. The value must be greater than the
current storage capacity.

=item *

For C<PERSISTENT HDD> file systems, valid values are multiples of 6000
GiB for 12 MB/s/TiB file systems and multiples of 1800 GiB for 40
MB/s/TiB file systems. The values must be greater than the current
storage capacity.

=item *

For C<SCRATCH_1> file systems, you cannot increase the storage
capacity.

=back

For more information, see Managing storage capacity
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html)
in the I<Amazon FSx for Windows File Server User Guide> and Managing
storage and throughput capacity
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html)
in the I<Amazon FSx for Lustre User Guide>.



=head2 WindowsConfiguration => L<Paws::FSX::UpdateFileSystemWindowsConfiguration>

The configuration updates for an Amazon FSx for Windows File Server
file system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

