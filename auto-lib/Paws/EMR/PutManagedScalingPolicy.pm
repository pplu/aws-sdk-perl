
package Paws::EMR::PutManagedScalingPolicy;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ManagedScalingPolicy => (is => 'ro', isa => 'Paws::EMR::ManagedScalingPolicy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutManagedScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::PutManagedScalingPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PutManagedScalingPolicy - Arguments for method PutManagedScalingPolicy on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutManagedScalingPolicy on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method PutManagedScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutManagedScalingPolicy.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $PutManagedScalingPolicyOutput =
      $elasticmapreduce->PutManagedScalingPolicy(
      ClusterId            => 'MyClusterId',
      ManagedScalingPolicy => {
        ComputeLimits => {
          MaximumCapacityUnits => 1,
          MinimumCapacityUnits => 1,
          UnitType             =>
            'InstanceFleetUnits',  # values: InstanceFleetUnits, Instances, VCPU
          MaximumCoreCapacityUnits     => 1,
          MaximumOnDemandCapacityUnits => 1,
        },    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/PutManagedScalingPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

Specifies the ID of an EMR cluster where the managed scaling policy is
attached.



=head2 B<REQUIRED> ManagedScalingPolicy => L<Paws::EMR::ManagedScalingPolicy>

Specifies the constraints for the managed scaling policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutManagedScalingPolicy in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

