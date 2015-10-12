package Paws::ECS::LoadBalancer;
  use Moose;
  has containerName => (is => 'ro', isa => 'Str');
  has containerPort => (is => 'ro', isa => 'Int');
  has loadBalancerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::LoadBalancer

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::LoadBalancer object:

  $service_obj->Method(Att1 => { containerName => $value, ..., loadBalancerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::LoadBalancer object:

  $result = $service_obj->Method(...);
  $result->Att1->containerName

=head1 ATTRIBUTES

=head2 containerName => Str

  The name of the container to associate with the load balancer.

=head2 containerPort => Int

  The port on the container to associate with the load balancer. This
port must correspond to a C<containerPort> in the service's task
definition. Your container instances must allow ingress traffic on the
C<hostPort> of the port mapping.

=head2 loadBalancerName => Str

  The name of the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

