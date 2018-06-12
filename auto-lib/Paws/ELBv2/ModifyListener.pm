
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

As an example:

  $service_obj->ModifyListener(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyListener>

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

[HTTPS listeners] The default SSL server certificate. You must provide
exactly one certificate. To create a certificate list, use
AddListenerCertificates.



=head2 DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

The actions for the default rule. The rule must include one forward
action.

If the action type is C<forward>, you can specify a single target
group. The protocol of the target group must be HTTP or HTTPS for an
Application Load Balancer or TCP for a Network Load Balancer.

If the action type is C<authenticate-oidc>, you can use an identity
provider that is OpenID Connect (OIDC) compliant to authenticate users
as they access your application.

If the action type is C<authenticate-cognito>, you can use Amazon
Cognito to authenticate users as they access your application.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.



=head2 Port => Int

The port for connections from clients to the load balancer.



=head2 Protocol => Str

The protocol for connections from clients to the load balancer.
Application Load Balancers support HTTP and HTTPS and Network Load
Balancers support TCP.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">

=head2 SslPolicy => Str

[HTTPS listeners] The security policy that defines which protocols and
ciphers are supported. For more information, see Security Policies
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
in the I<Application Load Balancers Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyListener in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

