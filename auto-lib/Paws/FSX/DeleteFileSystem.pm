
package Paws::FSX::DeleteFileSystem;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has WindowsConfiguration => (is => 'ro', isa => 'Paws::FSX::DeleteFileSystemWindowsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DeleteFileSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystem - Arguments for method DeleteFileSystem on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFileSystem on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DeleteFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFileSystem.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DeleteFileSystemResponse = $fsx->DeleteFileSystem(
      FileSystemId         => 'MyFileSystemId',
      ClientRequestToken   => 'MyClientRequestToken',    # OPTIONAL
      WindowsConfiguration => {
        FinalBackupTags => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],                            # min: 1, max: 50; OPTIONAL
        SkipFinalBackup => 1,         # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FileSystemId    = $DeleteFileSystemResponse->FileSystemId;
    my $Lifecycle       = $DeleteFileSystemResponse->Lifecycle;
    my $WindowsResponse = $DeleteFileSystemResponse->WindowsResponse;

    # Returns a L<Paws::FSX::DeleteFileSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DeleteFileSystem>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

(Optional) A string of up to 64 ASCII characters that Amazon FSx uses
to ensure idempotent deletion. This is automatically filled on your
behalf when using the AWS CLI or SDK.



=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system you want to delete.



=head2 WindowsConfiguration => L<Paws::FSX::DeleteFileSystemWindowsConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFileSystem in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

