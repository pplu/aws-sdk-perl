package Paws::ELB::Listener;
  use Moose;
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has InstanceProtocol => (is => 'ro', isa => 'Str');
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::Listener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::Listener object:

  $service_obj->Method(Att1 => { InstancePort => $value, ..., SSLCertificateId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::Listener object:

  $result = $service_obj->Method(...);
  $result->Att1->InstancePort

=head1 DESCRIPTION

Information about a listener.

For information about the protocols and the ports supported by Elastic
Load Balancing, see Listeners for Your Classic Load Balancer
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html)
in the I<Classic Load Balancers Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstancePort => Int

  The port on which the instance is listening.


=head2 InstanceProtocol => Str

  The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP,
or SSL.

If the front-end protocol is HTTP, HTTPS, TCP, or SSL,
C<InstanceProtocol> must be at the same protocol.

If there is another listener with the same C<InstancePort> whose
C<InstanceProtocol> is secure, (HTTPS or SSL), the listener's
C<InstanceProtocol> must also be secure.

If there is another listener with the same C<InstancePort> whose
C<InstanceProtocol> is HTTP or TCP, the listener's C<InstanceProtocol>
must be HTTP or TCP.


=head2 B<REQUIRED> LoadBalancerPort => Int

  The port on which the load balancer is listening. On EC2-VPC, you can
specify any port from the range 1-65535. On EC2-Classic, you can
specify any port from the following list: 25, 80, 443, 465, 587,
1024-65535.


=head2 B<REQUIRED> Protocol => Str

  The load balancer transport protocol to use for routing: HTTP, HTTPS,
TCP, or SSL.


=head2 SSLCertificateId => Str

  The Amazon Resource Name (ARN) of the server certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

