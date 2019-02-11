package Paws::CognitoIdp::SchemaAttributeType;
  use Moose;
  has AttributeDataType => (is => 'ro', isa => 'Str');
  has DeveloperOnlyAttribute => (is => 'ro', isa => 'Bool');
  has Mutable => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has NumberAttributeConstraints => (is => 'ro', isa => 'Paws::CognitoIdp::NumberAttributeConstraintsType');
  has Required => (is => 'ro', isa => 'Bool');
  has StringAttributeConstraints => (is => 'ro', isa => 'Paws::CognitoIdp::StringAttributeConstraintsType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SchemaAttributeType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::SchemaAttributeType object:

  $service_obj->Method(Att1 => { AttributeDataType => $value, ..., StringAttributeConstraints => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::SchemaAttributeType object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeDataType

=head1 DESCRIPTION

Contains information about the schema attribute.

=head1 ATTRIBUTES


=head2 AttributeDataType => Str

  The attribute data type.


=head2 DeveloperOnlyAttribute => Bool

  Specifies whether the attribute type is developer only.


=head2 Mutable => Bool

  Specifies whether the value of the attribute can be changed.

For any user pool attribute that's mapped to an identity provider
attribute, you must set this parameter to C<true>. Amazon Cognito
updates mapped attributes when users sign in to your application
through an identity provider. If an attribute is immutable, Amazon
Cognito throws an error when it attempts to update the attribute. For
more information, see Specifying Identity Provider Attribute Mappings
for Your User Pool
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html).


=head2 Name => Str

  A schema attribute of the name type.


=head2 NumberAttributeConstraints => L<Paws::CognitoIdp::NumberAttributeConstraintsType>

  Specifies the constraints for an attribute of the number type.


=head2 Required => Bool

  Specifies whether a user pool attribute is required. If the attribute
is required and the user does not provide a value, registration or
sign-in will fail.


=head2 StringAttributeConstraints => L<Paws::CognitoIdp::StringAttributeConstraintsType>

  Specifies the constraints for an attribute of the string type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

