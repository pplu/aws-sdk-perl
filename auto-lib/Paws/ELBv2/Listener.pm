package Paws::ELBv2::Listener;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]');
  has DefaultActions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]');
  has ListenerArn => (is => 'ro', isa => 'Str');
  has LoadBalancerArn => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
  has SslPolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Listener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Listener object:

  $service_obj->Method(Att1 => { Certificates => $value, ..., SslPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Listener object:

  $result = $service_obj->Method(...);
  $result->Att1->Certificates

=head1 DESCRIPTION

Information about a listener.

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

  The SSL server certificate. You must provide a certificate if the
protocol is HTTPS or TLS.


=head2 DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

  The default actions for the listener.


=head2 ListenerArn => Str

  The Amazon Resource Name (ARN) of the listener.


=head2 LoadBalancerArn => Str

  The Amazon Resource Name (ARN) of the load balancer.


=head2 Port => Int

  The port on which the load balancer is listening.


=head2 Protocol => Str

  The protocol for connections from clients to the load balancer.


=head2 SslPolicy => Str

  The security policy that defines which ciphers and protocols are
supported. The default is the current predefined security policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

