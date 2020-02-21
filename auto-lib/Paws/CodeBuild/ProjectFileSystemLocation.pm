package Paws::CodeBuild::ProjectFileSystemLocation;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', request_name => 'identifier', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has MountOptions => (is => 'ro', isa => 'Str', request_name => 'mountOptions', traits => ['NameInRequest']);
  has MountPoint => (is => 'ro', isa => 'Str', request_name => 'mountPoint', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectFileSystemLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectFileSystemLocation object:

  $service_obj->Method(Att1 => { Identifier => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectFileSystemLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Identifier

=head1 DESCRIPTION

Information about a file system created by Amazon Elastic File System
(EFS). For more information, see What Is Amazon Elastic File System?
(https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html)

=head1 ATTRIBUTES


=head2 Identifier => Str

  The name used to access a file system created by Amazon EFS. CodeBuild
creates an environment variable by appending the C<identifier> in all
capital letters to C<CODEBUILD_>. For example, if you specify C<my-efs>
for C<identifier>, a new environment variable is create named
C<CODEBUILD_MY-EFS>.

The C<identifier> is used to mount your file system.


=head2 Location => Str

  A string that specifies the location of the file system created by
Amazon EFS. Its format is C<efs-dns-name:/directory-path>. You can find
the DNS name of file system when you view it in the AWS EFS console.
The directory path is a path to a directory in the file system that
CodeBuild mounts. For example, if the DNS name of a file system is
C<fs-abcd1234.efs.us-west-2.amazonaws.com>, and its mount directory is
C<my-efs-mount-directory>, then the C<location> is
C<fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory>.

The directory path in the format C<efs-dns-name:/directory-path> is
optional. If you do not specify a directory path, the location is only
the DNS name and CodeBuild mounts the entire file system.


=head2 MountOptions => Str

  The mount options for a file system created by AWS EFS. The default
mount options used by CodeBuild are
C<nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2>.
For more information, see Recommended NFS Mount Options
(https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html).


=head2 MountPoint => Str

  The location in the container where you mount the file system.


=head2 Type => Str

  The type of the file system. The one supported type is C<EFS>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

