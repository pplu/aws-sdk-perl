
package Paws::ECS::CreateCluster;
  use Moose;
  has CapacityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capacityProviders' );
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName' );
  has Configuration => (is => 'ro', isa => 'Paws::ECS::ClusterConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has DefaultCapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProviderStrategyItem]', traits => ['NameInRequest'], request_name => 'defaultCapacityProviderStrategy' );
  has Settings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ClusterSetting]', traits => ['NameInRequest'], request_name => 'settings' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateCluster - Arguments for method CreateCluster on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To create a new cluster
    # This example creates a cluster in your default region.
    my $CreateClusterResponse =
      $ecs->CreateCluster( 'ClusterName' => 'my_cluster' );

    # Results:
    my $cluster = $CreateClusterResponse->cluster;

    # Returns a L<Paws::ECS::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateCluster>

=head1 ATTRIBUTES


=head2 CapacityProviders => ArrayRef[Str|Undef]

The short name of one or more capacity providers to associate with the
cluster. A capacity provider must be associated with a cluster before
it can be included as part of the default capacity provider strategy of
the cluster or used in a capacity provider strategy when calling the
CreateService or RunTask actions.

If specifying a capacity provider that uses an Auto Scaling group, the
capacity provider must already be created and not already associated
with another cluster. New Auto Scaling group capacity providers can be
created with the CreateCapacityProvider API operation.

To use a AWS Fargate capacity provider, specify either the C<FARGATE>
or C<FARGATE_SPOT> capacity providers. The AWS Fargate capacity
providers are available to all accounts and only need to be associated
with a cluster to be used.

The PutClusterCapacityProviders API operation is used to update the
list of available capacity providers for a cluster after the cluster is
created.



=head2 ClusterName => Str

The name of your cluster. If you do not specify a name for your
cluster, you create a cluster named C<default>. Up to 255 letters
(uppercase and lowercase), numbers, underscores, and hyphens are
allowed.



=head2 Configuration => L<Paws::ECS::ClusterConfiguration>

The execute command configuration for the cluster.



=head2 DefaultCapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]

The capacity provider strategy to set as the default for the cluster.
When a default capacity provider strategy is set for a cluster, when
calling the RunTask or CreateService APIs wtih no capacity provider
strategy or launch type specified, the default capacity provider
strategy for the cluster is used.

If a default capacity provider strategy is not defined for a cluster
during creation, it can be defined later with the
PutClusterCapacityProviders API operation.



=head2 Settings => ArrayRef[L<Paws::ECS::ClusterSetting>]

The setting to use when creating a cluster. This parameter is used to
enable CloudWatch Container Insights for a cluster. If this value is
specified, it will override the C<containerInsights> value set with
PutAccountSetting or PutAccountSettingDefault.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the cluster to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

