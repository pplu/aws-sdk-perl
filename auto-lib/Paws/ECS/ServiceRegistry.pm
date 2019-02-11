package Paws::ECS::ServiceRegistry;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', request_name => 'containerName', traits => ['NameInRequest']);
  has ContainerPort => (is => 'ro', isa => 'Int', request_name => 'containerPort', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has RegistryArn => (is => 'ro', isa => 'Str', request_name => 'registryArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ServiceRegistry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ServiceRegistry object:

  $service_obj->Method(Att1 => { ContainerName => $value, ..., RegistryArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ServiceRegistry object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerName

=head1 DESCRIPTION

Details of the service registry.

=head1 ATTRIBUTES


=head2 ContainerName => Str

  The container name value, already specified in the task definition, to
be used for your service discovery service. If the task definition that
your service task specifies uses the C<bridge> or C<host> network mode,
you must specify a C<containerName> and C<containerPort> combination
from the task definition. If the task definition that your service task
specifies uses the C<awsvpc> network mode and a type SRV DNS record is
used, you must specify either a C<containerName> and C<containerPort>
combination or a C<port> value, but not both.


=head2 ContainerPort => Int

  The port value, already specified in the task definition, to be used
for your service discovery service. If the task definition your service
task specifies uses the C<bridge> or C<host> network mode, you must
specify a C<containerName> and C<containerPort> combination from the
task definition. If the task definition your service task specifies
uses the C<awsvpc> network mode and a type SRV DNS record is used, you
must specify either a C<containerName> and C<containerPort> combination
or a C<port> value, but not both.


=head2 Port => Int

  The port value used if your service discovery service specified an SRV
record. This field may be used if both the C<awsvpc> network mode and
SRV records are used.


=head2 RegistryArn => Str

  The Amazon Resource Name (ARN) of the service registry. The currently
supported service registry is Amazon Route 53 Auto Naming. For more
information, see Service
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

