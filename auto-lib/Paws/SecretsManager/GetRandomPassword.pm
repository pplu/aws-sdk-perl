
package Paws::SecretsManager::GetRandomPassword;
  use Moose;
  has ExcludeCharacters => (is => 'ro', isa => 'Str');
  has ExcludeLowercase => (is => 'ro', isa => 'Bool');
  has ExcludeNumbers => (is => 'ro', isa => 'Bool');
  has ExcludePunctuation => (is => 'ro', isa => 'Bool');
  has ExcludeUppercase => (is => 'ro', isa => 'Bool');
  has IncludeSpace => (is => 'ro', isa => 'Bool');
  has PasswordLength => (is => 'ro', isa => 'Int');
  has RequireEachIncludedType => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRandomPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::GetRandomPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetRandomPassword - Arguments for method GetRandomPassword on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRandomPassword on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method GetRandomPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRandomPassword.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $GetRandomPasswordResponse = $secretsmanager->GetRandomPassword(
      ExcludeCharacters       => 'MyExcludeCharactersType',    # OPTIONAL
      ExcludeLowercase        => 1,                            # OPTIONAL
      ExcludeNumbers          => 1,                            # OPTIONAL
      ExcludePunctuation      => 1,                            # OPTIONAL
      ExcludeUppercase        => 1,                            # OPTIONAL
      IncludeSpace            => 1,                            # OPTIONAL
      PasswordLength          => 1,                            # OPTIONAL
      RequireEachIncludedType => 1,                            # OPTIONAL
    );

    # Results:
    my $RandomPassword = $GetRandomPasswordResponse->RandomPassword;

    # Returns a L<Paws::SecretsManager::GetRandomPasswordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/GetRandomPassword>

=head1 ATTRIBUTES


=head2 ExcludeCharacters => Str

A string that includes characters that should not be included in the
generated password. The default is that all characters from the
included sets can be used.



=head2 ExcludeLowercase => Bool

Specifies that the generated password should not include lowercase
letters. The default if you do not include this switch parameter is
that lowercase letters can be included.



=head2 ExcludeNumbers => Bool

Specifies that the generated password should not include digits. The
default if you do not include this switch parameter is that digits can
be included.



=head2 ExcludePunctuation => Bool

Specifies that the generated password should not include punctuation
characters. The default if you do not include this switch parameter is
that punctuation characters can be included.

The following are the punctuation characters that I<can> be included in
the generated password if you don't explicitly exclude them with
C<ExcludeCharacters> or C<ExcludePunctuation>:

C<! " # $ % & ' ( ) * + , - . / : ; E<lt> = E<gt> ? @ [ \ ] ^ _ ` { | }
~>



=head2 ExcludeUppercase => Bool

Specifies that the generated password should not include uppercase
letters. The default if you do not include this switch parameter is
that uppercase letters can be included.



=head2 IncludeSpace => Bool

Specifies that the generated password can include the space character.
The default if you do not include this switch parameter is that the
space character is not included.



=head2 PasswordLength => Int

The desired length of the generated password. The default value if you
do not include this parameter is 32 characters.



=head2 RequireEachIncludedType => Bool

A boolean value that specifies whether the generated password must
include at least one of every allowed character type. The default value
is C<True> and the operation requires at least one of every character
type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRandomPassword in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

