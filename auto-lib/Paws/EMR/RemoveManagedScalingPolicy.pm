
package Paws::EMR::RemoveManagedScalingPolicy;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveManagedScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::RemoveManagedScalingPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RemoveManagedScalingPolicy - Arguments for method RemoveManagedScalingPolicy on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveManagedScalingPolicy on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method RemoveManagedScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveManagedScalingPolicy.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $RemoveManagedScalingPolicyOutput =
      $elasticmapreduce->RemoveManagedScalingPolicy(
      ClusterId => 'MyClusterId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/RemoveManagedScalingPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

Specifies the ID of the cluster from which the managed scaling policy
will be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveManagedScalingPolicy in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

