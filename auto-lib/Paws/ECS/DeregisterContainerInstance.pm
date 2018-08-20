
package Paws::ECS::DeregisterContainerInstance;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstance => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerInstance' , required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterContainerInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DeregisterContainerInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeregisterContainerInstance - Arguments for method DeregisterContainerInstance on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterContainerInstance on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DeregisterContainerInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterContainerInstance.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
   # To deregister a container instance from a cluster
   # This example deregisters a container instance from the specified cluster in
   # your default region. If there are still tasks running on the container
   # instance, you must either stop those tasks before deregistering, or use the
   # force option.
    my $DeregisterContainerInstanceResponse = $ecs->DeregisterContainerInstance(
      {
        'Cluster'           => 'default',
        'ContainerInstance' => 'container_instance_UUID',
        'Force'             => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DeregisterContainerInstance>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instance to deregister. If you do not specify a
cluster, the default cluster is assumed.



=head2 B<REQUIRED> ContainerInstance => Str

The container instance ID or full ARN of the container instance to
deregister. The ARN contains the C<arn:aws:ecs> namespace, followed by
the Region of the container instance, the AWS account ID of the
container instance owner, the C<container-instance> namespace, and then
the container instance ID. For example,
C<arn:aws:ecs:I<region>:I<aws_account_id>:container-instance/I<container_instance_ID>
>.



=head2 Force => Bool

Forces the deregistration of the container instance. If you have tasks
running on the container instance when you deregister it with the
C<force> option, these tasks remain running until you terminate the
instance or the tasks stop through some other means, but they are
orphaned (no longer monitored or accounted for by Amazon ECS). If an
orphaned task on your container instance is part of an Amazon ECS
service, then the service scheduler starts another copy of that task,
on a different container instance if possible.

Any containers in orphaned service tasks that are registered with a
Classic Load Balancer or an Application Load Balancer target group are
deregistered. They begin connection draining according to the settings
on the load balancer or target group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterContainerInstance in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

