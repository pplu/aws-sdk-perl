package Paws::ELBv2::TargetHealth;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Reason => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TargetHealth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TargetHealth object:

  $service_obj->Method(Att1 => { Description => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TargetHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about the current health of a target.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the target health that provides additional details. If
the state is C<healthy>, a description is not provided.


=head2 Reason => Str

  The reason code.

If the target state is C<healthy>, a reason code is not provided.

If the target state is C<initial>, the reason code can be one of the
following values:

=over

=item *

C<Elb.RegistrationInProgress> - The target is in the process of being
registered with the load balancer.

=item *

C<Elb.InitialHealthChecking> - The load balancer is still sending the
target the minimum number of health checks required to determine its
health status.

=back

If the target state is C<unhealthy>, the reason code can be one of the
following values:

=over

=item *

C<Target.ResponseCodeMismatch> - The health checks did not return an
expected HTTP code.

=item *

C<Target.Timeout> - The health check requests timed out.

=item *

C<Target.FailedHealthChecks> - The health checks failed because the
connection to the target timed out, the target response was malformed,
or the target failed the health check for an unknown reason.

=item *

C<Elb.InternalError> - The health checks failed due to an internal
error.

=back

If the target state is C<unused>, the reason code can be one of the
following values:

=over

=item *

C<Target.NotRegistered> - The target is not registered with the target
group.

=item *

C<Target.NotInUse> - The target group is not used by any load balancer
or the target is in an Availability Zone that is not enabled for its
load balancer.

=item *

C<Target.IpUnusable> - The target IP address is reserved for use by a
load balancer.

=item *

C<Target.InvalidState> - The target is in the stopped or terminated
state.

=back

If the target state is C<draining>, the reason code can be the
following value:

=over

=item *

C<Target.DeregistrationInProgress> - The target is in the process of
being deregistered and the deregistration delay period has not expired.

=back

If the target state is C<unavailable>, the reason code can be the
following value:

=over

=item *

C<Target.HealthCheckDisabled> - Health checks are disabled for the
target group.

=back



=head2 State => Str

  The state of the target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

