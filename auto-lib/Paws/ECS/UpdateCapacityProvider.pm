
package Paws::ECS::UpdateCapacityProvider;
  use Moose;
  has AutoScalingGroupProvider => (is => 'ro', isa => 'Paws::ECS::AutoScalingGroupProviderUpdate', traits => ['NameInRequest'], request_name => 'autoScalingGroupProvider' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCapacityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateCapacityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateCapacityProvider - Arguments for method UpdateCapacityProvider on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCapacityProvider on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateCapacityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCapacityProvider.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateCapacityProviderResponse = $ecs->UpdateCapacityProvider(
      AutoScalingGroupProvider => {
        ManagedScaling => {
          InstanceWarmupPeriod   => 1,    # max: 10000; OPTIONAL
          MaximumScalingStepSize => 1,    # min: 1, max: 10000; OPTIONAL
          MinimumScalingStepSize => 1,    # min: 1, max: 10000; OPTIONAL
          Status         => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          TargetCapacity => 1,            # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        ManagedTerminationProtection =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },
      Name => 'MyString',

    );

    # Results:
    my $CapacityProvider = $UpdateCapacityProviderResponse->CapacityProvider;

    # Returns a L<Paws::ECS::UpdateCapacityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateCapacityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupProvider => L<Paws::ECS::AutoScalingGroupProviderUpdate>

An object representing the parameters to update for the Auto Scaling
group capacity provider.



=head2 B<REQUIRED> Name => Str

The name of the capacity provider to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCapacityProvider in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

