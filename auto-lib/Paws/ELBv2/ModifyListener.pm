
package Paws::ELBv2::ModifyListener;
  use Moose;
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
      {
        'DefaultActions' => [

          {
            'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f',
            'Type' => 'forward'
          }
        ],
        'ListenerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2'
      }
    );

    # Results:
    my $Listeners = $ModifyListenerOutput->Listeners;

    # Returns a L<Paws::ELBv2::ModifyListenerOutput> object.
    # To change the server certificate
    # This example changes the server certificate for the specified HTTPS
    # listener.
    my $ModifyListenerOutput = $elasticloadbalancing->ModifyListener(
      {
        'Certificates' => [

          {
            'CertificateArn' =>
              'arn:aws:iam::123456789012:server-certificate/my-new-server-cert'
          }
        ],
        'ListenerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65'
      }
    );

    # Results:
    my $Listeners = $ModifyListenerOutput->Listeners;

    # Returns a L<Paws::ELBv2::ModifyListenerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyListener>

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

[HTTPS and TLS listeners] The default SSL server certificate. You must
provide exactly one certificate. Set C<CertificateArn> to the
certificate ARN but do not set C<IsDefault>.

To create a certificate list, use AddListenerCertificates.



=head2 DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

The actions for the default rule. The rule must include one forward
action or one or more fixed-response actions.

If the action type is C<forward>, you specify a target group. The
protocol of the target group must be HTTP or HTTPS for an Application
Load Balancer. The protocol of the target group must be TCP or TLS for
a Network Load Balancer.

[HTTPS listeners] If the action type is C<authenticate-oidc>, you
authenticate users through an identity provider that is OpenID Connect
(OIDC) compliant.

[HTTPS listeners] If the action type is C<authenticate-cognito>, you
authenticate users through the user pools supported by Amazon Cognito.

[Application Load Balancer] If the action type is C<redirect>, you
redirect specified client requests from one URL to another.

[Application Load Balancer] If the action type is C<fixed-response>,
you drop specified client requests and return a custom HTTP response.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.



=head2 Port => Int

The port for connections from clients to the load balancer.



=head2 Protocol => Str

The protocol for connections from clients to the load balancer.
Application Load Balancers support the HTTP and HTTPS protocols.
Network Load Balancers support the TCP and TLS protocols.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">, C<"TLS">

=head2 SslPolicy => Str

[HTTPS and TLS listeners] The security policy that defines which
protocols and ciphers are supported. For more information, see Security
Policies
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
in the I<Application Load Balancers Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyListener in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

