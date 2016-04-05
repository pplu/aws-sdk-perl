package Paws::ECS::HostVolumeProperties;
  use Moose;
  has SourcePath => (is => 'ro', isa => 'Str', xmlname => 'sourcePath', request_name => 'sourcePath', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::HostVolumeProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::HostVolumeProperties object:

  $service_obj->Method(Att1 => { SourcePath => $value, ..., SourcePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::HostVolumeProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->SourcePath

=head1 DESCRIPTION

Details on a container instance host volume.

=head1 ATTRIBUTES


=head2 SourcePath => Str

  The path on the host container instance that is presented to the
container. If this parameter is empty, then the Docker daemon has
assigned a host path for you. If the C<host> parameter contains a
C<sourcePath> file location, then the data volume persists at the
specified location on the host container instance until you delete it
manually. If the C<sourcePath> value does not exist on the host
container instance, the Docker daemon creates it. If the location does
exist, the contents of the source path folder are exported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

