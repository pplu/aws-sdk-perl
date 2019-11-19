# Generated from json/callargs_class.tt

package Paws::FSX::CreateFileSystem;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::FSX::Types qw/FSX_Tag FSX_CreateFileSystemWindowsConfiguration FSX_CreateFileSystemLustreConfiguration/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has FileSystemType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has LustreConfiguration => (is => 'ro', isa => FSX_CreateFileSystemLustreConfiguration, predicate => 1);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has StorageCapacity => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[FSX_Tag], predicate => 1);
  has WindowsConfiguration => (is => 'ro', isa => FSX_CreateFileSystemWindowsConfiguration, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFileSystem');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::FSX::CreateFileSystemResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StorageCapacity' => {
                                      'type' => 'Int'
                                    },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'FileSystemType' => {
                                     'type' => 'Str'
                                   },
               'Tags' => {
                           'class' => 'Paws::FSX::Tag',
                           'type' => 'ArrayRef[FSX_Tag]'
                         },
               'LustreConfiguration' => {
                                          'class' => 'Paws::FSX::CreateFileSystemLustreConfiguration',
                                          'type' => 'FSX_CreateFileSystemLustreConfiguration'
                                        },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'WindowsConfiguration' => {
                                           'type' => 'FSX_CreateFileSystemWindowsConfiguration',
                                           'class' => 'Paws::FSX::CreateFileSystemWindowsConfiguration'
                                         },
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             },
  'IsRequired' => {
                    'StorageCapacity' => 1,
                    'FileSystemType' => 1,
                    'SubnetIds' => 1
                  }
}
;
    return $Params_map;
  }

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
        ExportPath => 'MyArchivePath',    # min: 3, max: 900; OPTIONAL
        ImportPath => 'MyArchivePath',    # min: 3, max: 900; OPTIONAL
        ImportedFileChunkSize => 1,       # min: 1, max: 512000; OPTIONAL
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
      SecurityGroupIds => [
        'MySecurityGroupId', ...    # min: 11, max: 20
      ],                            # OPTIONAL
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
        SelfManagedActiveDirectoryConfiguration => {
          DnsIps     => [ 'MyIpAddress', ... ],               # min: 1, max: 2
          DomainName => 'MyActiveDirectoryFullyQualifiedName',
          Password   => 'MyDirectoryPassword',                # min: 1, max: 256
          UserName   => 'MyDirectoryUserName',                # min: 1, max: 256
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

(Optional) A string of up to 64 ASCII characters that Amazon FSx uses
to ensure idempotent creation. This string is automatically filled on
your behalf when you use the AWS Command Line Interface (AWS CLI) or an
AWS SDK.



=head2 B<REQUIRED> FileSystemType => Str

The type of Amazon FSx file system to create.

Valid values are: C<"WINDOWS">, C<"LUSTRE">

=head2 KmsKeyId => Str





=head2 LustreConfiguration => FSX_CreateFileSystemLustreConfiguration





=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs specifying the security groups to apply to all network
interfaces created for file system access. This list isn't returned in
later requests to describe the file system.



=head2 B<REQUIRED> StorageCapacity => Int

The storage capacity of the file system being created.

For Windows file systems, the storage capacity has a minimum of 300
GiB, and a maximum of 65,536 GiB.

For Lustre file systems, the storage capacity has a minimum of 3,600
GiB. Storage capacity is provisioned in increments of 3,600 GiB.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The IDs of the subnets that the file system will be accessible from.
File systems support only one subnet. The file server is also launched
in that subnet's Availability Zone.



=head2 Tags => ArrayRef[FSX_Tag]

The tags to apply to the file system being created. The key value of
the C<Name> tag appears in the console as the file system name.



=head2 WindowsConfiguration => FSX_CreateFileSystemWindowsConfiguration

The Microsoft Windows configuration for the file system being created.
This value is required if C<FileSystemType> is set to C<WINDOWS>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

