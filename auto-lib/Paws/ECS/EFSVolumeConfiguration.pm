package Paws::ECS::EFSVolumeConfiguration;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', request_name => 'fileSystemId', traits => ['NameInRequest'], required => 1);
  has RootDirectory => (is => 'ro', isa => 'Str', request_name => 'rootDirectory', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::EFSVolumeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::EFSVolumeConfiguration object:

  $service_obj->Method(Att1 => { FileSystemId => $value, ..., RootDirectory => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::EFSVolumeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FileSystemId

=head1 DESCRIPTION

This parameter is specified when you are using an Amazon Elastic File
System (Amazon EFS) file storage. Amazon EFS file systems are only
supported when you are using the EC2 launch type.

C<EFSVolumeConfiguration> remains in preview and is a Beta Service as
defined by and subject to the Beta Service Participation Service Terms
located at https://aws.amazon.com/service-terms
(https://aws.amazon.com/service-terms) ("Beta Terms"). These Beta Terms
apply to your participation in this preview of
C<EFSVolumeConfiguration>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

  The Amazon EFS file system ID to use.


=head2 RootDirectory => Str

  The directory within the Amazon EFS file system to mount as the root
directory inside the host.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

