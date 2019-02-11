
package Paws::AutoScaling::SetDesiredCapacity;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has HonorCooldown => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDesiredCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::SetDesiredCapacity - Arguments for method SetDesiredCapacity on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDesiredCapacity on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method SetDesiredCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDesiredCapacity.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To set the desired capacity for an Auto Scaling group
    # This example sets the desired capacity for the specified Auto Scaling
    # group.
    $autoscaling->SetDesiredCapacity(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'DesiredCapacity'      => 2,
        'HonorCooldown'        => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/SetDesiredCapacity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> DesiredCapacity => Int

The number of EC2 instances that should be running in the Auto Scaling
group.



=head2 HonorCooldown => Bool

Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period
to complete before initiating a scaling activity to set your Auto
Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling
does not honor the cooldown period during manual scaling activities.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDesiredCapacity in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

