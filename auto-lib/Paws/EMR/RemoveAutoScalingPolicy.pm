
package Paws::EMR::RemoveAutoScalingPolicy;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveAutoScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::RemoveAutoScalingPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RemoveAutoScalingPolicy - Arguments for method RemoveAutoScalingPolicy on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAutoScalingPolicy on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method RemoveAutoScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAutoScalingPolicy.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $RemoveAutoScalingPolicyOutput =
      $elasticmapreduce->RemoveAutoScalingPolicy(
      ClusterId       => 'MyClusterId',
      InstanceGroupId => 'MyInstanceGroupId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/RemoveAutoScalingPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

Specifies the ID of a cluster. The instance group to which the
automatic scaling policy is applied is within this cluster.



=head2 B<REQUIRED> InstanceGroupId => Str

Specifies the ID of the instance group to which the scaling policy is
applied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAutoScalingPolicy in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

