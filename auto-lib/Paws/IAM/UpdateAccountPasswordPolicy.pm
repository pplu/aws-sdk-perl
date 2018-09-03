
package Paws::IAM::UpdateAccountPasswordPolicy;
  use Moose;
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Bool');
  has HardExpiry => (is => 'ro', isa => 'Bool');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has PasswordReusePrevention => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Bool');
  has RequireNumbers => (is => 'ro', isa => 'Bool');
  has RequireSymbols => (is => 'ro', isa => 'Bool');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateAccountPasswordPolicy - Arguments for method UpdateAccountPasswordPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountPasswordPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateAccountPasswordPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountPasswordPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To set or change the current account password policy
    # The following command sets the password policy to require a minimum length
    # of eight characters and to require one or more numbers in the password:
    $iam->UpdateAccountPasswordPolicy(
      {
        'MinimumPasswordLength' => 8,
        'RequireNumbers'        => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateAccountPasswordPolicy>

=head1 ATTRIBUTES


=head2 AllowUsersToChangePassword => Bool

Allows all IAM users in your account to use the AWS Management Console
to change their own passwords. For more information, see Letting IAM
Users Change Their Own Passwords
(http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html)
in the I<IAM User Guide>.

If you do not specify a value for this parameter, then the operation
uses the default value of C<false>. The result is that IAM users in the
account do not automatically have permissions to change their own
password.



=head2 HardExpiry => Bool

Prevents IAM users from setting a new password after their password has
expired. The IAM user cannot be accessed until an administrator resets
the password.

If you do not specify a value for this parameter, then the operation
uses the default value of C<false>. The result is that IAM users can
change their passwords after they expire and continue to sign in as the
user.



=head2 MaxPasswordAge => Int

The number of days that an IAM user password is valid.

If you do not specify a value for this parameter, then the operation
uses the default value of C<0>. The result is that IAM user passwords
never expire.



=head2 MinimumPasswordLength => Int

The minimum number of characters allowed in an IAM user password.

If you do not specify a value for this parameter, then the operation
uses the default value of C<6>.



=head2 PasswordReusePrevention => Int

Specifies the number of previous passwords that IAM users are prevented
from reusing.

If you do not specify a value for this parameter, then the operation
uses the default value of C<0>. The result is that IAM users are not
prevented from reusing previous passwords.



=head2 RequireLowercaseCharacters => Bool

Specifies whether IAM user passwords must contain at least one
lowercase character from the ISO basic Latin alphabet (a to z).

If you do not specify a value for this parameter, then the operation
uses the default value of C<false>. The result is that passwords do not
require at least one lowercase character.



=head2 RequireNumbers => Bool

Specifies whether IAM user passwords must contain at least one numeric
character (0 to 9).

If you do not specify a value for this parameter, then the operation
uses the default value of C<false>. The result is that passwords do not
require at least one numeric character.



=head2 RequireSymbols => Bool

Specifies whether IAM user passwords must contain at least one of the
following non-alphanumeric characters:

! @ # $ % ^ & * ( ) _ + - = [ ] { } | '

If you do not specify a value for this parameter, then the operation
uses the default value of C<false>. The result is that passwords do not
require at least one symbol character.



=head2 RequireUppercaseCharacters => Bool

Specifies whether IAM user passwords must contain at least one
uppercase character from the ISO basic Latin alphabet (A to Z).

If you do not specify a value for this parameter, then the operation
uses the default value of C<false>. The result is that passwords do not
require at least one uppercase character.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountPasswordPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

