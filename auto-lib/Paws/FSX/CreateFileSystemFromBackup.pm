
package Paws::FSX::CreateFileSystemFromBackup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      SecurityGroupIds   => [
        'MySecurityGroupId', ...                       # min: 11, max: 20
      ],                                               # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      WindowsConfiguration => {
        ThroughputCapacity => 1,                  # min: 8, max: 2048
        ActiveDirectoryId  => 'MyDirectoryId',    # min: 12, max: 12; OPTIONAL
        AutomaticBackupRetentionDays => 1,        # max: 35; OPTIONAL
        CopyTagsToBackups            => 1,        # OPTIONAL
        DailyAutomaticBackupStartTime =>
          'MyDailyTime',                          # min: 5, max: 5; OPTIONAL
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

(Optional) A string of up to 64 ASCII characters that Amazon FSx uses
to ensure idempotent creation. This string is automatically filled on
your behalf when you use the AWS Command Line Interface (AWS CLI) or an
AWS SDK.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs for the security groups that apply to the specified
network interfaces created for file system access. These security
groups apply to all network interfaces. This value isn't returned in
later describe requests.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of IDs for the subnets that the file system will be accessible
from. Currently, you can specify only one subnet. The file server is
also launched in that subnet's Availability Zone.



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

