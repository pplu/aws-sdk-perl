
package Paws::CognitoIdp::ChangePassword;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has PreviousPassword => (is => 'ro', isa => 'Str', required => 1);
  has ProposedPassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ChangePasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ChangePassword - Arguments for method ChangePassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangePassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ChangePassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangePassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ChangePasswordResponse = $cognito -idp->ChangePassword(
      AccessToken      => 'MyTokenModelType',
      PreviousPassword => 'MyPasswordType',
      ProposedPassword => 'MyPasswordType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ChangePassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token.



=head2 B<REQUIRED> PreviousPassword => Str

The old password.



=head2 B<REQUIRED> ProposedPassword => Str

The new password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangePassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

