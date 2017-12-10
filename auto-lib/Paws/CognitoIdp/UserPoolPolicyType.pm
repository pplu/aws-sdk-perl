package Paws::CognitoIdp::UserPoolPolicyType;
  use Moose;
  has PasswordPolicy => (is => 'ro', isa => 'Paws::CognitoIdp::PasswordPolicyType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserPoolPolicyType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolPolicyType object:

  $service_obj->Method(Att1 => { PasswordPolicy => $value, ..., PasswordPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolPolicyType object:

  $result = $service_obj->Method(...);
  $result->Att1->PasswordPolicy

=head1 DESCRIPTION

The policy associated with a user pool.

=head1 ATTRIBUTES


=head2 PasswordPolicy => L<Paws::CognitoIdp::PasswordPolicyType>

  The password policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

