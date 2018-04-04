package Paws::IAM::PasswordPolicy;
  use Moose;
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Bool');
  has ExpirePasswords => (is => 'ro', isa => 'Bool');
  has HardExpiry => (is => 'ro', isa => 'Bool');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has PasswordReusePrevention => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Bool');
  has RequireNumbers => (is => 'ro', isa => 'Bool');
  has RequireSymbols => (is => 'ro', isa => 'Bool');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PasswordPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::PasswordPolicy object:

  $service_obj->Method(Att1 => { AllowUsersToChangePassword => $value, ..., RequireUppercaseCharacters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::PasswordPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowUsersToChangePassword

=head1 DESCRIPTION

Contains information about the account password policy.

This data type is used as a response element in the
GetAccountPasswordPolicy operation.

=head1 ATTRIBUTES


=head2 AllowUsersToChangePassword => Bool

  Specifies whether IAM users are allowed to change their own password.


=head2 ExpirePasswords => Bool

  Indicates whether passwords in the account expire. Returns true if
C<MaxPasswordAge> contains a value greater than 0. Returns false if
MaxPasswordAge is 0 or not present.


=head2 HardExpiry => Bool

  Specifies whether IAM users are prevented from setting a new password
after their password has expired.


=head2 MaxPasswordAge => Int

  The number of days that an IAM user password is valid.


=head2 MinimumPasswordLength => Int

  Minimum length to require for IAM user passwords.


=head2 PasswordReusePrevention => Int

  Specifies the number of previous passwords that IAM users are prevented
from reusing.


=head2 RequireLowercaseCharacters => Bool

  Specifies whether to require lowercase characters for IAM user
passwords.


=head2 RequireNumbers => Bool

  Specifies whether to require numbers for IAM user passwords.


=head2 RequireSymbols => Bool

  Specifies whether to require symbols for IAM user passwords.


=head2 RequireUppercaseCharacters => Bool

  Specifies whether to require uppercase characters for IAM user
passwords.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

