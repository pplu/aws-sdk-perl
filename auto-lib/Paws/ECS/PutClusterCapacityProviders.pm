
package Paws::ECS::PutClusterCapacityProviders;
  use Moose;
  has CapacityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capacityProviders' , required => 1);
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has DefaultCapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProviderStrategyItem]', traits => ['NameInRequest'], request_name => 'defaultCapacityProviderStrategy' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutClusterCapacityProviders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::PutClusterCapacityProvidersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutClusterCapacityProviders - Arguments for method PutClusterCapacityProviders on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutClusterCapacityProviders on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method PutClusterCapacityProviders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutClusterCapacityProviders.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $PutClusterCapacityProvidersResponse = $ecs->PutClusterCapacityProviders(
      CapacityProviders               => [ 'MyString', ... ],
      Cluster                         => 'MyString',
      DefaultCapacityProviderStrategy => [
        {
          CapacityProvider => 'MyString',
          Base             => 1,            # max: 100000; OPTIONAL
          Weight           => 1,            # max: 1000; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Cluster = $PutClusterCapacityProvidersResponse->Cluster;

    # Returns a L<Paws::ECS::PutClusterCapacityProvidersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/PutClusterCapacityProviders>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityProviders => ArrayRef[Str|Undef]

The short name or full Amazon Resource Name (ARN) of one or more
capacity providers to associate with the cluster.

If specifying a capacity provider that uses an Auto Scaling group, the
capacity provider must already be created. New capacity providers can
be created with the CreateCapacityProvider API operation.

To use a AWS Fargate capacity provider, specify either the C<FARGATE>
or C<FARGATE_SPOT> capacity providers. The AWS Fargate capacity
providers are available to all accounts and only need to be associated
with a cluster to be used.



=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster to
modify the capacity provider settings for. If you do not specify a
cluster, the default cluster is assumed.



=head2 B<REQUIRED> DefaultCapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]

The capacity provider strategy to use by default for the cluster.

When creating a service or running a task on a cluster, if no capacity
provider or launch type is specified then the default capacity provider
strategy for the cluster is used.

A capacity provider strategy consists of one or more capacity providers
along with the C<base> and C<weight> to assign to them. A capacity
provider must be associated with the cluster to be used in a capacity
provider strategy. The PutClusterCapacityProviders API is used to
associate a capacity provider with a cluster. Only capacity providers
with an C<ACTIVE> or C<UPDATING> status can be used.

If specifying a capacity provider that uses an Auto Scaling group, the
capacity provider must already be created. New capacity providers can
be created with the CreateCapacityProvider API operation.

To use a AWS Fargate capacity provider, specify either the C<FARGATE>
or C<FARGATE_SPOT> capacity providers. The AWS Fargate capacity
providers are available to all accounts and only need to be associated
with a cluster to be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutClusterCapacityProviders in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

