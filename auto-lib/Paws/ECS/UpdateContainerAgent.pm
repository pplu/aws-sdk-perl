
package Paws::ECS::UpdateContainerAgent;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstance => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerInstance' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContainerAgent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateContainerAgentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateContainerAgent - Arguments for method UpdateContainerAgent on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContainerAgent on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateContainerAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContainerAgent.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateContainerAgentResponse = $ecs->UpdateContainerAgent(
      ContainerInstance => 'MyString',
      Cluster           => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ContainerInstance = $UpdateContainerAgentResponse->ContainerInstance;

    # Returns a L<Paws::ECS::UpdateContainerAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateContainerAgent>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
your container instance is running on. If you do not specify a cluster,
the default cluster is assumed.



=head2 B<REQUIRED> ContainerInstance => Str

The container instance ID or full ARN entries for the container
instance on which you would like to update the Amazon ECS container
agent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContainerAgent in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

