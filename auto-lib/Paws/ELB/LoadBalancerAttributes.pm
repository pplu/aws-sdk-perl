package Paws::ELB::LoadBalancerAttributes;
  use Moose;
  has AccessLog => (is => 'ro', isa => 'Paws::ELB::AccessLog');
  has AdditionalAttributes => (is => 'ro', isa => 'ArrayRef[Paws::ELB::AdditionalAttribute]');
  has ConnectionDraining => (is => 'ro', isa => 'Paws::ELB::ConnectionDraining');
  has ConnectionSettings => (is => 'ro', isa => 'Paws::ELB::ConnectionSettings');
  has CrossZoneLoadBalancing => (is => 'ro', isa => 'Paws::ELB::CrossZoneLoadBalancing');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::LoadBalancerAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::LoadBalancerAttributes object:

  $service_obj->Method(Att1 => { AccessLog => $value, ..., CrossZoneLoadBalancing => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::LoadBalancerAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessLog

=head1 DESCRIPTION

The attributes for a load balancer.

=head1 ATTRIBUTES


=head2 AccessLog => L<Paws::ELB::AccessLog>

  If enabled, the load balancer captures detailed information of all
requests and delivers the information to the Amazon S3 bucket that you
specify.

For more information, see Enable Access Logs
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html)
in the I<Classic Load Balancers Guide>.


=head2 AdditionalAttributes => ArrayRef[L<Paws::ELB::AdditionalAttribute>]

  This parameter is reserved.


=head2 ConnectionDraining => L<Paws::ELB::ConnectionDraining>

  If enabled, the load balancer allows existing requests to complete
before the load balancer shifts traffic away from a deregistered or
unhealthy instance.

For more information, see Configure Connection Draining
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html)
in the I<Classic Load Balancers Guide>.


=head2 ConnectionSettings => L<Paws::ELB::ConnectionSettings>

  If enabled, the load balancer allows the connections to remain idle (no
data is sent over the connection) for the specified duration.

By default, Elastic Load Balancing maintains a 60-second idle
connection timeout for both front-end and back-end connections of your
load balancer. For more information, see Configure Idle Connection
Timeout
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html)
in the I<Classic Load Balancers Guide>.


=head2 CrossZoneLoadBalancing => L<Paws::ELB::CrossZoneLoadBalancing>

  If enabled, the load balancer routes the request traffic evenly across
all instances regardless of the Availability Zones.

For more information, see Configure Cross-Zone Load Balancing
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html)
in the I<Classic Load Balancers Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

