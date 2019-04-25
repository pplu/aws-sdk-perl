
package Paws::AutoScaling::DeleteAutoScalingGroup;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DeleteAutoScalingGroup - Arguments for method DeleteAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DeleteAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To delete an Auto Scaling group
    # This example deletes the specified Auto Scaling group.
    $autoscaling->DeleteAutoScalingGroup(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group'
      }
    );

    # To delete an Auto Scaling group and all its instances
    # This example deletes the specified Auto Scaling group and all its
    # instances.
    $autoscaling->DeleteAutoScalingGroup(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'ForceDelete'          => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DeleteAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 ForceDelete => Bool

Specifies that the group is to be deleted along with all instances
associated with the group, without waiting for all instances to be
terminated. This parameter also deletes any lifecycle actions
associated with the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

