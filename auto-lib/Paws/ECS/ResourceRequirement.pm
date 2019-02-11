package Paws::ECS::ResourceRequirement;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ResourceRequirement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ResourceRequirement object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ResourceRequirement object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

The type and amount of a resource to assign to a container. The only
supported resource is a GPU. For more information, see Working with
GPUs on Amazon ECS
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html)
in the I<Amazon Elastic Container Service Developer Guide>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The type of resource to assign to a container. The only supported value
is C<GPU>.


=head2 B<REQUIRED> Value => Str

  The number of physical C<GPUs> the Amazon ECS container agent will
reserve for the container. The number of GPUs reserved for all
containers in a task should not exceed the number of available GPUs on
the container instance the task is launched on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

