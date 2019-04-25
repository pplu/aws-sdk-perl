
package Paws::IAM::UpdateLoginProfile;
  use Moose;
  has Password => (is => 'ro', isa => 'Str');
  has PasswordResetRequired => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateLoginProfile - Arguments for method UpdateLoginProfile on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLoginProfile on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateLoginProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLoginProfile.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To change the password for an IAM user
    # The following command creates or changes the password for the IAM user
    # named Bob.
    $iam->UpdateLoginProfile(
      {
        'Password' => 'SomeKindOfPassword123!@#',
        'UserName' => 'Bob'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateLoginProfile>

=head1 ATTRIBUTES


=head2 Password => Str

The new password for the specified IAM user.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back

However, the format can be further restricted by the account
administrator by setting a password policy on the AWS account. For more
information, see UpdateAccountPasswordPolicy.



=head2 PasswordResetRequired => Bool

Allows this new password to be used only once by requiring the
specified IAM user to set a new password on next sign-in.



=head2 B<REQUIRED> UserName => Str

The name of the user whose password you want to update.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLoginProfile in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

