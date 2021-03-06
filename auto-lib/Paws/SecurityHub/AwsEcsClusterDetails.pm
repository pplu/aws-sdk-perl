# Generated by default/object.tt
package Paws::SecurityHub::AwsEcsClusterDetails;
  use Moose;
  has CapacityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterSettings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEcsClusterClusterSettingsDetails]');
  has Configuration => (is => 'ro', isa => 'Paws::SecurityHub::AwsEcsClusterConfigurationDetails');
  has DefaultCapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEcsClusterDefaultCapacityProviderStrategyDetails]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEcsClusterDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEcsClusterDetails object:

  $service_obj->Method(Att1 => { CapacityProviders => $value, ..., DefaultCapacityProviderStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEcsClusterDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityProviders

=head1 DESCRIPTION

provides details about an ECS cluster.

=head1 ATTRIBUTES


=head2 CapacityProviders => ArrayRef[Str|Undef]

The short name of one or more capacity providers to associate with the
cluster.


=head2 ClusterSettings => ArrayRef[L<Paws::SecurityHub::AwsEcsClusterClusterSettingsDetails>]

The setting to use to create the cluster. Specifically used to
configure whether to enable CloudWatch Container Insights for the
cluster.


=head2 Configuration => L<Paws::SecurityHub::AwsEcsClusterConfigurationDetails>

The run command configuration for the cluster.


=head2 DefaultCapacityProviderStrategy => ArrayRef[L<Paws::SecurityHub::AwsEcsClusterDefaultCapacityProviderStrategyDetails>]

The default capacity provider strategy for the cluster. The default
capacity provider strategy is used when services or tasks are run
without a specified launch type or capacity provider strategy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

