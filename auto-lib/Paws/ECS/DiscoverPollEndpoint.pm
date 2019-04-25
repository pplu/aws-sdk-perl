
package Paws::ECS::DiscoverPollEndpoint;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstance => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerInstance' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DiscoverPollEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DiscoverPollEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DiscoverPollEndpoint - Arguments for method DiscoverPollEndpoint on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscoverPollEndpoint on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DiscoverPollEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscoverPollEndpoint.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DiscoverPollEndpointResponse = $ecs->DiscoverPollEndpoint(
      Cluster           => 'MyString',    # OPTIONAL
      ContainerInstance => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Endpoint          = $DiscoverPollEndpointResponse->Endpoint;
    my $TelemetryEndpoint = $DiscoverPollEndpointResponse->TelemetryEndpoint;

    # Returns a L<Paws::ECS::DiscoverPollEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DiscoverPollEndpoint>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster to
which the container instance belongs.



=head2 ContainerInstance => Str

The container instance ID or full ARN of the container instance. The
ARN contains the C<arn:aws:ecs> namespace, followed by the Region of
the container instance, the AWS account ID of the container instance
owner, the C<container-instance> namespace, and then the container
instance ID. For example,
C<arn:aws:ecs:I<region>:I<aws_account_id>:container-instance/I<container_instance_ID>
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverPollEndpoint in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

