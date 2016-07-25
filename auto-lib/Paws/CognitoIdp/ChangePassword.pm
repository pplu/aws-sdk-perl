
package Paws::CognitoIdp::ChangePassword;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str');
  has PreviousPassword => (is => 'ro', isa => 'Str', required => 1);
  has ProposedPassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ChangePasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ChangePassword - Arguments for method ChangePassword on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangePassword on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method ChangePassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangePassword.

As an example:

  $service_obj->ChangePassword(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccessToken => Str

The access token in the change password request.



=head2 B<REQUIRED> PreviousPassword => Str

The old password in the change password request.



=head2 B<REQUIRED> ProposedPassword => Str

The new password in the change password request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangePassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

