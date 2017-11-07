package Paws::CognitoIdp::PasswordPolicyType;
  use Moose;
  has MinimumLength => (is => 'ro', isa => 'Int');
  has RequireLowercase => (is => 'ro', isa => 'Bool');
  has RequireNumbers => (is => 'ro', isa => 'Bool');
  has RequireSymbols => (is => 'ro', isa => 'Bool');
  has RequireUppercase => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::PasswordPolicyType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::PasswordPolicyType object:

  $service_obj->Method(Att1 => { MinimumLength => $value, ..., RequireUppercase => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::PasswordPolicyType object:

  $result = $service_obj->Method(...);
  $result->Att1->MinimumLength

=head1 DESCRIPTION

The password policy type.

=head1 ATTRIBUTES


=head2 MinimumLength => Int

  The minimum length of the password policy that you have set. Cannot be
less than 6.


=head2 RequireLowercase => Bool

  In the password policy that you have set, refers to whether you have
required users to use at least one lowercase letter in their password.


=head2 RequireNumbers => Bool

  In the password policy that you have set, refers to whether you have
required users to use at least one number in their password.


=head2 RequireSymbols => Bool

  In the password policy that you have set, refers to whether you have
required users to use at least one symbol in their password.


=head2 RequireUppercase => Bool

  In the password policy that you have set, refers to whether you have
required users to use at least one uppercase letter in their password.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

