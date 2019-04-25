
package Paws::WorkMail::ResetPassword;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ResetPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ResetPassword - Arguments for method ResetPassword on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetPassword on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ResetPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetPassword.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ResetPasswordResponse = $workmail->ResetPassword(
      OrganizationId => 'MyOrganizationId',
      Password       => 'MyPassword',
      UserId         => 'MyWorkMailIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ResetPassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization that contains the user for which the
password is reset.



=head2 B<REQUIRED> Password => Str

The new password for the user.



=head2 B<REQUIRED> UserId => Str

The identifier of the user for whom the password is reset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetPassword in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

