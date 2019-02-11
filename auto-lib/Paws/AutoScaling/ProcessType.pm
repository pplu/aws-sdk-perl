package Paws::AutoScaling::ProcessType;
  use Moose;
  has ProcessName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ProcessType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::ProcessType object:

  $service_obj->Method(Att1 => { ProcessName => $value, ..., ProcessName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::ProcessType object:

  $result = $service_obj->Method(...);
  $result->Att1->ProcessName

=head1 DESCRIPTION

Describes a process type.

For more information, see Scaling Processes
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types)
in the I<Amazon EC2 Auto Scaling User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProcessName => Str

  One of the following processes:

=over

=item *

C<Launch>

=item *

C<Terminate>

=item *

C<AddToLoadBalancer>

=item *

C<AlarmNotification>

=item *

C<AZRebalance>

=item *

C<HealthCheck>

=item *

C<ReplaceUnhealthy>

=item *

C<ScheduledActions>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

