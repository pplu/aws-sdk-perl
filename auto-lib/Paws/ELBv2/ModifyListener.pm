
package Paws::ELBv2::ModifyListener;
  use Moose;
  has AlpnPolicy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]');
  has DefaultActions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]');
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
  has SslPolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyListenerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyListenerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyListener - Arguments for method ModifyListener on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyListener on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyListener.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To change the default action for a listener
    # This example changes the default action for the specified listener.
    my $ModifyListenerOutput = $elasticloadbalancing->ModifyListener(
      'DefaultActions' => [

        {
          'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f',
          'Type' => 'forward'
        }
      ],
      'ListenerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2'
    );

    # Results:
    my $Listeners = $ModifyListenerOutput->Listeners;

 # Returns a L<Paws::ELBv2::ModifyListenerOutput> object.
 # To change the server certificate
 # This example changes the server certificate for the specified HTTPS listener.
    my $ModifyListenerOutput = $elasticloadbalancing->ModifyListener(
      'Certificates' => [

        {
          'CertificateArn' =>
            'arn:aws:iam::123456789012:server-certificate/my-new-server-cert'
        }
      ],
      'ListenerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65'
    );

    # Results:
    my $Listeners = $ModifyListenerOutput->Listeners;

    # Returns a L<Paws::ELBv2::ModifyListenerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyListener>

=head1 ATTRIBUTES


=head2 AlpnPolicy => ArrayRef[Str|Undef]

[TLS listeners] The name of the Application-Layer Protocol Negotiation
(ALPN) policy. You can specify one policy name. The following are the
possible values:

=over

=item *

C<HTTP1Only>

=item *

C<HTTP2Only>

=item *

C<HTTP2Optional>

=item *

C<HTTP2Preferred>

=item *

C<None>

=back

For more information, see ALPN policies
(https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies)
in the I<Network Load Balancers Guide>.



=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

[HTTPS and TLS listeners] The default certificate for the listener. You
must provide exactly one certificate. Set C<CertificateArn> to the
certificate ARN but do not set C<IsDefault>.



=head2 DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

The actions for the default rule.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.



=head2 Port => Int

The port for connections from clients to the load balancer. You cannot
specify a port for a Gateway Load Balancer.



=head2 Protocol => Str

The protocol for connections from clients to the load balancer.
Application Load Balancers support the HTTP and HTTPS protocols.
Network Load Balancers support the TCP, TLS, UDP, and TCP_UDP
protocols. You canE<rsquo>t change the protocol to UDP or TCP_UDP if
dual-stack mode is enabled. You cannot specify a protocol for a Gateway
Load Balancer.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">, C<"TLS">, C<"UDP">, C<"TCP_UDP">, C<"GENEVE">

=head2 SslPolicy => Str

[HTTPS and TLS listeners] The security policy that defines which
protocols and ciphers are supported.

For more information, see Security policies
(https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
in the I<Application Load Balancers Guide> or Security policies
(https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies)
in the I<Network Load Balancers Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyListener in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

