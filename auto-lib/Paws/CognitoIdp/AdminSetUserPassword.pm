
package Paws::CognitoIdp::AdminSetUserPassword;
  use Moose;
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has Permanent => (is => 'ro', isa => 'Bool');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminSetUserPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminSetUserPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminSetUserPassword - Arguments for method AdminSetUserPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminSetUserPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminSetUserPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminSetUserPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminSetUserPasswordResponse = $cognito -idp->AdminSetUserPassword(
      Password   => 'MyPasswordType',
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',
      Permanent  => 1,                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminSetUserPassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Password => Str





=head2 Permanent => Bool





=head2 B<REQUIRED> Username => Str





=head2 B<REQUIRED> UserPoolId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminSetUserPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

