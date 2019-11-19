# Generated from default/object.tt
package Paws::ELBv2::Action;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::ELBv2::Types qw/ELBv2_ForwardActionConfig ELBv2_FixedResponseActionConfig ELBv2_AuthenticateCognitoActionConfig ELBv2_AuthenticateOidcActionConfig ELBv2_RedirectActionConfig/;
  has AuthenticateCognitoConfig => (is => 'ro', isa => ELBv2_AuthenticateCognitoActionConfig);
  has AuthenticateOidcConfig => (is => 'ro', isa => ELBv2_AuthenticateOidcActionConfig);
  has FixedResponseConfig => (is => 'ro', isa => ELBv2_FixedResponseActionConfig);
  has ForwardConfig => (is => 'ro', isa => ELBv2_ForwardActionConfig);
  has Order => (is => 'ro', isa => Int);
  has RedirectConfig => (is => 'ro', isa => ELBv2_RedirectActionConfig);
  has TargetGroupArn => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthenticateCognitoConfig' => {
                                                'type' => 'ELBv2_AuthenticateCognitoActionConfig',
                                                'class' => 'Paws::ELBv2::AuthenticateCognitoActionConfig'
                                              },
               'FixedResponseConfig' => {
                                          'type' => 'ELBv2_FixedResponseActionConfig',
                                          'class' => 'Paws::ELBv2::FixedResponseActionConfig'
                                        },
               'ForwardConfig' => {
                                    'type' => 'ELBv2_ForwardActionConfig',
                                    'class' => 'Paws::ELBv2::ForwardActionConfig'
                                  },
               'Order' => {
                            'type' => 'Int'
                          },
               'Type' => {
                           'type' => 'Str'
                         },
               'TargetGroupArn' => {
                                     'type' => 'Str'
                                   },
               'AuthenticateOidcConfig' => {
                                             'class' => 'Paws::ELBv2::AuthenticateOidcActionConfig',
                                             'type' => 'ELBv2_AuthenticateOidcActionConfig'
                                           },
               'RedirectConfig' => {
                                     'class' => 'Paws::ELBv2::RedirectActionConfig',
                                     'type' => 'ELBv2_RedirectActionConfig'
                                   }
             },
  'IsRequired' => {
                    'Type' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 AuthenticateCognitoConfig => ELBv2_AuthenticateCognitoActionConfig

  [HTTPS listeners] Information for using Amazon Cognito to authenticate
users. Specify only when C<Type> is C<authenticate-cognito>.


=head2 AuthenticateOidcConfig => ELBv2_AuthenticateOidcActionConfig

  [HTTPS listeners] Information about an identity provider that is
compliant with OpenID Connect (OIDC). Specify only when C<Type> is
C<authenticate-oidc>.


=head2 FixedResponseConfig => ELBv2_FixedResponseActionConfig

  [Application Load Balancer] Information for creating an action that
returns a custom HTTP response. Specify only when C<Type> is
C<fixed-response>.


=head2 ForwardConfig => ELBv2_ForwardActionConfig

  Information for creating an action that distributes requests among one
or more target groups. For Network Load Balancers, you can specify a
single target group. Specify only when C<Type> is C<forward>. If you
specify both C<ForwardConfig> and C<TargetGroupArn>, you can specify
only one target group using C<ForwardConfig> and it must be the same
target group specified in C<TargetGroupArn>.


=head2 Order => Int

  The order for the action. This value is required for rules with
multiple actions. The action with the lowest value for order is
performed first. The last action to be performed must be one of the
following types of actions: a C<forward>, C<fixed-response>, or
C<redirect>.


=head2 RedirectConfig => ELBv2_RedirectActionConfig

  [Application Load Balancer] Information for creating a redirect action.
Specify only when C<Type> is C<redirect>.


=head2 TargetGroupArn => Str

  The Amazon Resource Name (ARN) of the target group. Specify only when
C<Type> is C<forward> and you want to route to a single target group.
To route to one or more target groups, use C<ForwardConfig> instead.


=head2 B<REQUIRED> Type => Str

  The type of action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

