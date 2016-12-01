
package Paws::EMR::PutAutoScalingPolicy;
  use Moose;
  has AutoScalingPolicy => (is => 'ro', isa => 'Paws::EMR::AutoScalingPolicy', required => 1);
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAutoScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::PutAutoScalingPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PutAutoScalingPolicy - Arguments for method PutAutoScalingPolicy on Paws::EMR

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAutoScalingPolicy on the 
Amazon Elastic MapReduce service. Use the attributes of this class
as arguments to method PutAutoScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAutoScalingPolicy.

As an example:

  $service_obj->PutAutoScalingPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingPolicy => L<Paws::EMR::AutoScalingPolicy>

Specifies the definition of the automatic scaling policy.



=head2 B<REQUIRED> ClusterId => Str

Specifies the ID of a cluster. The instance group to which the
automatic scaling policy is applied is within this cluster.



=head2 B<REQUIRED> InstanceGroupId => Str

Specifies the ID of the instance group to which the automatic scaling
policy is applied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAutoScalingPolicy in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

