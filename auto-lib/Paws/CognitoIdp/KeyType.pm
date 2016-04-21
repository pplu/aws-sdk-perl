package Paws::CognitoIdp::KeyType;
  use Moose;
  has Alg => (is => 'ro', isa => 'Str', xmlname => 'alg', request_name => 'alg', traits => ['Unwrapped','NameInRequest']);
  has E => (is => 'ro', isa => 'Str', xmlname => 'e', request_name => 'e', traits => ['Unwrapped','NameInRequest']);
  has Kid => (is => 'ro', isa => 'Str', xmlname => 'kid', request_name => 'kid', traits => ['Unwrapped','NameInRequest']);
  has Kty => (is => 'ro', isa => 'Str', xmlname => 'kty', request_name => 'kty', traits => ['Unwrapped','NameInRequest']);
  has N => (is => 'ro', isa => 'Str', xmlname => 'n', request_name => 'n', traits => ['Unwrapped','NameInRequest']);
  has Use => (is => 'ro', isa => 'Str', xmlname => 'use', request_name => 'use', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::KeyType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::KeyType object:

  $service_obj->Method(Att1 => { Alg => $value, ..., Use => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::KeyType object:

  $result = $service_obj->Method(...);
  $result->Att1->Alg

=head1 DESCRIPTION

A JSON Web Key key type in JSON Web Key (JWK) Format.

=head1 ATTRIBUTES


=head2 Alg => Str

  A "kty" (Key Type) parameter. For more information, see "kty" (Key
Type) Parameter.


=head2 E => Str

  An "e" parameter.


=head2 Kid => Str

  A "kid" (Key ID) parameter. For more information, see "kid" (Key ID)
Parameter.


=head2 Kty => Str

  A "kty" key type parameter. For more information, see JSON Web Key
(JWK) Format.


=head2 N => Str

  An "n" parameter.


=head2 Use => Str

  A "use" (Public Key Use) parameter. For more information, see "use"
(Public Key Use) Parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

