
package Paws::CognitoIdp::AdminUpdateUserAttributes;
  use Moose;
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminUpdateUserAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminUpdateUserAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminUpdateUserAttributes - Arguments for method AdminUpdateUserAttributes on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminUpdateUserAttributes on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminUpdateUserAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminUpdateUserAttributes.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminUpdateUserAttributesResponse =
      $cognito -idp->AdminUpdateUserAttributes(
      UserAttributes => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminUpdateUserAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.



=head2 B<REQUIRED> Username => Str

The user name of the user for whom you want to update user attributes.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to update user
attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminUpdateUserAttributes in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

