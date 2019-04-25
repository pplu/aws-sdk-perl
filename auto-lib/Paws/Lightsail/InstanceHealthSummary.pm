package Paws::Lightsail::InstanceHealthSummary;
  use Moose;
  has InstanceHealth => (is => 'ro', isa => 'Str', request_name => 'instanceHealth', traits => ['NameInRequest']);
  has InstanceHealthReason => (is => 'ro', isa => 'Str', request_name => 'instanceHealthReason', traits => ['NameInRequest']);
  has InstanceName => (is => 'ro', isa => 'Str', request_name => 'instanceName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceHealthSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceHealthSummary object:

  $service_obj->Method(Att1 => { InstanceHealth => $value, ..., InstanceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceHealthSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceHealth

=head1 DESCRIPTION

Describes information about the health of the instance.

=head1 ATTRIBUTES


=head2 InstanceHealth => Str

  Describes the overall instance health. Valid values are below.


=head2 InstanceHealthReason => Str

  More information about the instance health. If the C<instanceHealth> is
C<healthy>, then an C<instanceHealthReason> value is not provided.

If B< C<instanceHealth> > is C<initial>, the B< C<instanceHealthReason>
> value can be one of the following:

=over

=item *

B<C<Lb.RegistrationInProgress> > - The target instance is in the
process of being registered with the load balancer.

=item *

B<C<Lb.InitialHealthChecking> > - The Lightsail load balancer is still
sending the target instance the minimum number of health checks
required to determine its health status.

=back

If B< C<instanceHealth> > is C<unhealthy>, the B<
C<instanceHealthReason> > value can be one of the following:

=over

=item *

B<C<Instance.ResponseCodeMismatch> > - The health checks did not return
an expected HTTP code.

=item *

B<C<Instance.Timeout> > - The health check requests timed out.

=item *

B<C<Instance.FailedHealthChecks> > - The health checks failed because
the connection to the target instance timed out, the target instance
response was malformed, or the target instance failed the health check
for an unknown reason.

=item *

B<C<Lb.InternalError> > - The health checks failed due to an internal
error.

=back

If B< C<instanceHealth> > is C<unused>, the B< C<instanceHealthReason>
> value can be one of the following:

=over

=item *

B<C<Instance.NotRegistered> > - The target instance is not registered
with the target group.

=item *

B<C<Instance.NotInUse> > - The target group is not used by any load
balancer, or the target instance is in an Availability Zone that is not
enabled for its load balancer.

=item *

B<C<Instance.IpUnusable> > - The target IP address is reserved for use
by a Lightsail load balancer.

=item *

B<C<Instance.InvalidState> > - The target is in the stopped or
terminated state.

=back

If B< C<instanceHealth> > is C<draining>, the B<
C<instanceHealthReason> > value can be one of the following:

=over

=item *

B<C<Instance.DeregistrationInProgress> > - The target instance is in
the process of being deregistered and the deregistration delay period
has not expired.

=back



=head2 InstanceName => Str

  The name of the Lightsail instance for which you are requesting health
check data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

