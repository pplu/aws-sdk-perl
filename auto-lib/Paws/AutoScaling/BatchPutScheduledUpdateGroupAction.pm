
package Paws::AutoScaling::BatchPutScheduledUpdateGroupAction;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScheduledUpdateGroupActions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::ScheduledUpdateGroupActionRequest]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutScheduledUpdateGroupAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::BatchPutScheduledUpdateGroupActionAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BatchPutScheduledUpdateGroupActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BatchPutScheduledUpdateGroupAction - Arguments for method BatchPutScheduledUpdateGroupAction on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutScheduledUpdateGroupAction on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method BatchPutScheduledUpdateGroupAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutScheduledUpdateGroupAction.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    my $BatchPutScheduledUpdateGroupActionAnswer =
      $autoscaling->BatchPutScheduledUpdateGroupAction(
      AutoScalingGroupName        => 'MyResourceName',
      ScheduledUpdateGroupActions => [
        {
          ScheduledActionName => 'MyXmlStringMaxLen255',    # min: 1, max: 255
          DesiredCapacity     => 1,                         # OPTIONAL
          EndTime             => '1970-01-01T01:00:00',     # OPTIONAL
          MaxSize             => 1,                         # OPTIONAL
          MinSize             => 1,                         # OPTIONAL
          Recurrence          => 'MyXmlStringMaxLen255',    # min: 1, max: 255
          StartTime           => '1970-01-01T01:00:00',     # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $FailedScheduledUpdateGroupActions =
      $BatchPutScheduledUpdateGroupActionAnswer
      ->FailedScheduledUpdateGroupActions;

# Returns a L<Paws::AutoScaling::BatchPutScheduledUpdateGroupActionAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/BatchPutScheduledUpdateGroupAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> ScheduledUpdateGroupActions => ArrayRef[L<Paws::AutoScaling::ScheduledUpdateGroupActionRequest>]

One or more scheduled actions. The maximum number allowed is 50.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutScheduledUpdateGroupAction in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

