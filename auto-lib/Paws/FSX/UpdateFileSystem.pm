# Generated from json/callargs_class.tt

package Paws::FSX::UpdateFileSystem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw/FSX_UpdateFileSystemWindowsConfiguration FSX_UpdateFileSystemLustreConfiguration/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has FileSystemId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LustreConfiguration => (is => 'ro', isa => FSX_UpdateFileSystemLustreConfiguration, predicate => 1);
  has WindowsConfiguration => (is => 'ro', isa => FSX_UpdateFileSystemWindowsConfiguration, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateFileSystem');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::FSX::UpdateFileSystemResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'WindowsConfiguration' => {
                                           'class' => 'Paws::FSX::UpdateFileSystemWindowsConfiguration',
                                           'type' => 'FSX_UpdateFileSystemWindowsConfiguration'
                                         },
               'FileSystemId' => {
                                   'type' => 'Str'
                                 },
               'LustreConfiguration' => {
                                          'class' => 'Paws::FSX::UpdateFileSystemLustreConfiguration',
                                          'type' => 'FSX_UpdateFileSystemLustreConfiguration'
                                        }
             },
  'IsRequired' => {
                    'FileSystemId' => 1
                  }
}
;
    return $Params_map;
  }

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
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
      WindowsConfiguration => {
        AutomaticBackupRetentionDays => 1,    # max: 35; OPTIONAL
        DailyAutomaticBackupStartTime =>
          'MyDailyTime',                      # min: 5, max: 5; OPTIONAL
        SelfManagedActiveDirectoryConfiguration => {
          DnsIps   => [ 'MyIpAddress', ... ],    # min: 1, max: 2; OPTIONAL
          Password => 'MyDirectoryPassword',     # min: 1, max: 256; OPTIONAL
          UserName => 'MyDirectoryUserName',     # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
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

(Optional) A string of up to 64 ASCII characters that Amazon FSx uses
to ensure idempotent updates. This string is automatically filled on
your behalf when you use the AWS Command Line Interface (AWS CLI) or an
AWS SDK.



=head2 B<REQUIRED> FileSystemId => Str





=head2 LustreConfiguration => FSX_UpdateFileSystemLustreConfiguration





=head2 WindowsConfiguration => FSX_UpdateFileSystemWindowsConfiguration

The configuration update for this Microsoft Windows file system. The
only supported options are for backup and maintenance and for
self-managed Active Directory configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

