package Paws::ECS::SystemControl;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Str', request_name => 'namespace', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SystemControl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::SystemControl object:

  $service_obj->Method(Att1 => { Namespace => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::SystemControl object:

  $result = $service_obj->Method(...);
  $result->Att1->Namespace

=head1 DESCRIPTION

A list of namespaced kernel parameters to set in the container. This
parameter maps to C<Sysctls> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--sysctl> option
to docker run (https://docs.docker.com/engine/reference/run/).

It is not recommended that you specify network-related
C<systemControls> parameters for multiple containers in a single task
that also uses either the C<awsvpc> or C<host> network mode for the
following reasons:

=over

=item *

For tasks that use the C<awsvpc> network mode, if you set
C<systemControls> for any container, it applies to all containers in
the task. If you set different C<systemControls> for multiple
containers in a single task, the container that is started last
determines which C<systemControls> take effect.

=item *

For tasks that use the C<host> network mode, the C<systemControls>
parameter applies to the container instance's kernel parameter as well
as that of all containers of any tasks running on that container
instance.

=back


=head1 ATTRIBUTES


=head2 Namespace => Str

  The namespaced kernel parameter for which to set a C<value>.


=head2 Value => Str

  The value for the namespaced kernel parameter specified in
C<namespace>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

