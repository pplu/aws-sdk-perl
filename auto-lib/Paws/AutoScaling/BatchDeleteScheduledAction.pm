
package Paws::AutoScaling::BatchDeleteScheduledAction;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScheduledActionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::BatchDeleteScheduledActionAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BatchDeleteScheduledActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BatchDeleteScheduledAction - Arguments for method BatchDeleteScheduledAction on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteScheduledAction on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method BatchDeleteScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteScheduledAction.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    my $BatchDeleteScheduledActionAnswer =
      $autoscaling->BatchDeleteScheduledAction(
      AutoScalingGroupName => 'MyResourceName',
      ScheduledActionNames => [
        'MyResourceName', ...    # min: 1, max: 1600
      ],

      );

    # Results:
    my $FailedScheduledActions =
      $BatchDeleteScheduledActionAnswer->FailedScheduledActions;

    # Returns a L<Paws::AutoScaling::BatchDeleteScheduledActionAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/BatchDeleteScheduledAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> ScheduledActionNames => ArrayRef[Str|Undef]

The names of the scheduled actions to delete. The maximum number
allowed is 50.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteScheduledAction in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

