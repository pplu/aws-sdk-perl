package Paws::ServiceDiscovery::HealthCheckCustomConfig;
  use Moose;
  has FailureThreshold => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::HealthCheckCustomConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::HealthCheckCustomConfig object:

  $service_obj->Method(Att1 => { FailureThreshold => $value, ..., FailureThreshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::HealthCheckCustomConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureThreshold

=head1 DESCRIPTION

A complex type that contains information about an optional custom
health check. A custom health check, which requires that you use a
third-party health checker to evaluate the health of your resources, is
useful in the following circumstances:

=over

=item *

You can't use a health check that is defined by C<HealthCheckConfig>
because the resource isn't available over the internet. For example,
you can use a custom health check when the instance is in an Amazon
VPC. (To check the health of resources in a VPC, the health checker
must also be in the VPC.)

=item *

You want to use a third-party health checker regardless of where your
resources are.

=back

If you specify a health check configuration, you can specify either
C<HealthCheckCustomConfig> or C<HealthCheckConfig> but not both.

To change the status of a custom health check, submit an
C<UpdateInstanceCustomHealthStatus> request. Cloud Map doesn't monitor
the status of the resource, it just keeps a record of the status
specified in the most recent C<UpdateInstanceCustomHealthStatus>
request.

Here's how custom health checks work:

=over

=item 1.

You create a service and specify a value for C<FailureThreshold>.

The failure threshold indicates the number of 30-second intervals you
want AWS Cloud Map to wait between the time that your application sends
an UpdateInstanceCustomHealthStatus request and the time that AWS Cloud
Map stops routing internet traffic to the corresponding resource.

=item 2.

You register an instance.

=item 3.

You configure a third-party health checker to monitor the resource that
is associated with the new instance.

AWS Cloud Map doesn't check the health of the resource directly.

=item 4.

The third-party health-checker determines that the resource is
unhealthy and notifies your application.

=item 5.

Your application submits an C<UpdateInstanceCustomHealthStatus>
request.

=item 6.

AWS Cloud Map waits for (C<FailureThreshold> x 30) seconds.

=item 7.

If another C<UpdateInstanceCustomHealthStatus> request doesn't arrive
during that time to change the status back to healthy, AWS Cloud Map
stops routing traffic to the resource.

=back

Note the following about configuring custom health checks.

=head1 ATTRIBUTES


=head2 FailureThreshold => Int

  The number of 30-second intervals that you want Cloud Map to wait after
receiving an C<UpdateInstanceCustomHealthStatus> request before it
changes the health status of a service instance. For example, suppose
you specify a value of C<2> for C<FailureTheshold>, and then your
application sends an C<UpdateInstanceCustomHealthStatus> request. Cloud
Map waits for approximately 60 seconds (2 x 30) before changing the
status of the service instance based on that request.

Sending a second or subsequent C<UpdateInstanceCustomHealthStatus>
request with the same value before C<FailureThreshold x 30> seconds has
passed doesn't accelerate the change. Cloud Map still waits
C<FailureThreshold x 30> seconds after the first request to make the
change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

