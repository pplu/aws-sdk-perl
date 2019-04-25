package Paws::ELBv2::Action;
  use Moose;
  has AuthenticateCognitoConfig => (is => 'ro', isa => 'Paws::ELBv2::AuthenticateCognitoActionConfig');
  has AuthenticateOidcConfig => (is => 'ro', isa => 'Paws::ELBv2::AuthenticateOidcActionConfig');
  has FixedResponseConfig => (is => 'ro', isa => 'Paws::ELBv2::FixedResponseActionConfig');
  has Order => (is => 'ro', isa => 'Int');
  has RedirectConfig => (is => 'ro', isa => 'Paws::ELBv2::RedirectActionConfig');
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


=head2 FixedResponseConfig => L<Paws::ELBv2::FixedResponseActionConfig>

  [Application Load Balancer] Information for creating an action that
returns a custom HTTP response. Specify only when C<Type> is
C<fixed-response>.


=head2 Order => Int

  The order for the action. This value is required for rules with
multiple actions. The action with the lowest value for order is
performed first. The final action to be performed must be a C<forward>
or a C<fixed-response> action.


=head2 RedirectConfig => L<Paws::ELBv2::RedirectActionConfig>

  [Application Load Balancer] Information for creating a redirect action.
Specify only when C<Type> is C<redirect>.


=head2 TargetGroupArn => Str

  The Amazon Resource Name (ARN) of the target group. Specify only when
C<Type> is C<forward>.


=head2 B<REQUIRED> Type => Str

  The type of action. Each rule must include exactly one of the following
types of actions: C<forward>, C<fixed-response>, or C<redirect>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

