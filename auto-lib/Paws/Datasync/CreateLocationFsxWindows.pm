
package Paws::Datasync::CreateLocationFsxWindows;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has FsxFilesystemArn => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has User => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationFsxWindows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationFsxWindowsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationFsxWindows - Arguments for method CreateLocationFsxWindows on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationFsxWindows on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationFsxWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationFsxWindows.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationFsxWindowsResponse = $datasync->CreateLocationFsxWindows(
      FsxFilesystemArn  => 'MyFsxFilesystemArn',
      Password          => 'MySmbPassword',
      SecurityGroupArns => [
        'MyEc2SecurityGroupArn', ...    # max: 128
      ],
      User         => 'MySmbUser',
      Domain       => 'MySmbDomain',                 # OPTIONAL
      Subdirectory => 'MyFsxWindowsSubdirectory',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationFsxWindowsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationFsxWindowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationFsxWindows>

=head1 ATTRIBUTES


=head2 Domain => Str

The name of the Windows domain that the FSx for Windows File Server
belongs to.



=head2 B<REQUIRED> FsxFilesystemArn => Str

The Amazon Resource Name (ARN) for the FSx for Windows File Server file
system.



=head2 B<REQUIRED> Password => Str

The password of the user who has the permissions to access files and
folders in the FSx for Windows File Server file system.



=head2 B<REQUIRED> SecurityGroupArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the security groups that are to use
to configure the FSx for Windows File Server file system.



=head2 Subdirectory => Str

A subdirectory in the locationE<rsquo>s path. This subdirectory in the
Amazon FSx for Windows File Server file system is used to read data
from the Amazon FSx for Windows File Server source location or write
data to the FSx for Windows File Server destination.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents a tag that you want to add to the
resource. The value can be an empty string. This value helps you
manage, filter, and search for your resources. We recommend that you
create a name tag for your location.



=head2 B<REQUIRED> User => Str

The user who has the permissions to access files and folders in the FSx
for Windows File Server file system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationFsxWindows in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

