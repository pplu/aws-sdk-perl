
package Paws::ELBv2::CreateListener;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]');
  has DefaultActions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]', required => 1);
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SslPolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateListenerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateListenerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateListener - Arguments for method CreateListener on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateListener on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method CreateListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateListener.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To create an HTTP listener
    # This example creates an HTTP listener for the specified load balancer that
    # forwards requests to the specified target group.
    my $CreateListenerOutput = $elasticloadbalancing->CreateListener(
      {
        'DefaultActions' => [

          {
            'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067',
            'Type' => 'forward'
          }
        ],
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188',
        'Port'     => 80,
        'Protocol' => 'HTTP'
      }
    );

    # Results:
    my $Listeners = $CreateListenerOutput->Listeners;

   # Returns a L<Paws::ELBv2::CreateListenerOutput> object.
   # To create an HTTPS listener
   # This example creates an HTTPS listener for the specified load balancer that
   # forwards requests to the specified target group. Note that you must specify
   # an SSL certificate for an HTTPS listener. You can create and manage
   # certificates using AWS Certificate Manager (ACM). Alternatively, you can
   # create a certificate using SSL/TLS tools, get the certificate signed by a
   # certificate authority (CA), and upload the certificate to AWS Identity and
   # Access Management (IAM).
    my $CreateListenerOutput = $elasticloadbalancing->CreateListener(
      {
        'Certificates' => [

          {
            'CertificateArn' =>
              'arn:aws:iam::123456789012:server-certificate/my-server-cert'
          }
        ],
        'DefaultActions' => [

          {
            'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067',
            'Type' => 'forward'
          }
        ],
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188',
        'Port'      => 443,
        'Protocol'  => 'HTTPS',
        'SslPolicy' => 'ELBSecurityPolicy-2015-05'
      }
    );

    # Results:
    my $Listeners = $CreateListenerOutput->Listeners;

    # Returns a L<Paws::ELBv2::CreateListenerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateListener>

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

[HTTPS and TLS listeners] The default SSL server certificate. You must
provide exactly one certificate. Set C<CertificateArn> to the
certificate ARN but do not set C<IsDefault>.

To create a certificate list, use AddListenerCertificates.



=head2 B<REQUIRED> DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

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



=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 B<REQUIRED> Port => Int

The port on which the load balancer is listening.



=head2 B<REQUIRED> Protocol => Str

The protocol for connections from clients to the load balancer. For
Application Load Balancers, the supported protocols are HTTP and HTTPS.
For Network Load Balancers, the supported protocols are TCP and TLS.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">, C<"TLS">

=head2 SslPolicy => Str

[HTTPS and TLS listeners] The security policy that defines which
ciphers and protocols are supported. The default is the current
predefined security policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateListener in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

