
package Paws::AutoScaling::ResumeProcesses;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeProcesses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ResumeProcesses - Arguments for method ResumeProcesses on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResumeProcesses on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method ResumeProcesses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResumeProcesses.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To resume Auto Scaling processes
    # This example resumes the specified suspended scaling process for the
    # specified Auto Scaling group.
    $autoscaling->ResumeProcesses(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'ScalingProcesses'     => ['AlarmNotification']
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/ResumeProcesses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 ScalingProcesses => ArrayRef[Str|Undef]

One or more of the following processes. If you omit this parameter, all
processes are specified.

=over

=item *

C<Launch>

=item *

C<Terminate>

=item *

C<HealthCheck>

=item *

C<ReplaceUnhealthy>

=item *

C<AZRebalance>

=item *

C<AlarmNotification>

=item *

C<ScheduledActions>

=item *

C<AddToLoadBalancer>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResumeProcesses in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

