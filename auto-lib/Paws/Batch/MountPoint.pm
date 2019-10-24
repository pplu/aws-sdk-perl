# Generated from default/object.tt
package Paws::Batch::MountPoint;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Batch::Types qw//;
  has ContainerPath => (is => 'ro', isa => Str);
  has ReadOnly => (is => 'ro', isa => Bool);
  has SourceVolume => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReadOnly' => {
                               'type' => 'Bool'
                             },
               'ContainerPath' => {
                                    'type' => 'Str'
                                  },
               'SourceVolume' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ReadOnly' => 'readOnly',
                       'ContainerPath' => 'containerPath',
                       'SourceVolume' => 'sourceVolume'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::MountPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::MountPoint object:

  $service_obj->Method(Att1 => { ContainerPath => $value, ..., SourceVolume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::MountPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPath

=head1 DESCRIPTION

Details on a Docker volume mount point that is used in a job's
container properties. This parameter maps to C<Volumes> in the Create a
container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.19/#create-a-container)
section of the Docker Remote API and the C<--volume> option to docker
run.

=head1 ATTRIBUTES


=head2 ContainerPath => Str

  The path on the container at which to mount the host volume.


=head2 ReadOnly => Bool

  If this value is C<true>, the container has read-only access to the
volume; otherwise, the container can write to the volume. The default
value is C<false>.


=head2 SourceVolume => Str

  The name of the volume to mount.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

