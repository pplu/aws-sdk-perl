
package Paws::AutoScaling::DeleteWarmPool;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWarmPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DeleteWarmPoolAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteWarmPoolResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DeleteWarmPool - Arguments for method DeleteWarmPool on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWarmPool on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DeleteWarmPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWarmPool.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    my $DeleteWarmPoolAnswer = $autoscaling->DeleteWarmPool(
      AutoScalingGroupName => 'MyXmlStringMaxLen255',
      ForceDelete          => 1,                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DeleteWarmPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 ForceDelete => Bool

Specifies that the warm pool is to be deleted along with all of its
associated instances, without waiting for all instances to be
terminated. This parameter also deletes any outstanding lifecycle
actions associated with the warm pool instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWarmPool in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

