package Paws::ELBv2::Action;
  use Moose;
  has AuthenticateCognitoConfig => (is => 'ro', isa => 'Paws::ELBv2::AuthenticateCognitoActionConfig');
  has AuthenticateOidcConfig => (is => 'ro', isa => 'Paws::ELBv2::AuthenticateOidcActionConfig');
  has Order => (is => 'ro', isa => 'Int');
  has TargetGroupArn => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Action object:

  $service_obj->Method(Att1 => { AuthenticateCognitoConfig => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticateCognitoConfig

=head1 DESCRIPTION

Information about an action.

=head1 ATTRIBUTES


=head2 AuthenticateCognitoConfig => L<Paws::ELBv2::AuthenticateCognitoActionConfig>

  [HTTPS listeners] Information for using Amazon Cognito to authenticate
users. Specify only when C<Type> is C<authenticate-cognito>.


=head2 AuthenticateOidcConfig => L<Paws::ELBv2::AuthenticateOidcActionConfig>

  [HTTPS listeners] Information about an identity provider that is
compliant with OpenID Connect (OIDC). Specify only when C<Type> is
C<authenticate-oidc>.


=head2 Order => Int

  The order for the action. This value is required for rules with
multiple actions. The action with the lowest value for order is
performed first. The forward action must be performed last.


=head2 TargetGroupArn => Str

  The Amazon Resource Name (ARN) of the target group. Specify only when
C<Type> is C<forward>.

For a default rule, the protocol of the target group must be HTTP or
HTTPS for an Application Load Balancer or TCP for a Network Load
Balancer.


=head2 B<REQUIRED> Type => Str

  The type of action. Each rule must include one forward action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

