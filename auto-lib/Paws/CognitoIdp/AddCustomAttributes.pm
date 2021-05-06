
package Paws::CognitoIdp::AddCustomAttributes;
  use Moose;
  has CustomAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::SchemaAttributeType]', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddCustomAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AddCustomAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AddCustomAttributes - Arguments for method AddCustomAttributes on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddCustomAttributes on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AddCustomAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddCustomAttributes.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AddCustomAttributesResponse = $cognito -idp->AddCustomAttributes(
      CustomAttributes => [
        {
          AttributeDataType =>
            'String',    # values: String, Number, DateTime, Boolean; OPTIONAL
          DeveloperOnlyAttribute => 1,    # OPTIONAL
          Mutable                => 1,    # OPTIONAL
          Name => 'MyCustomAttributeNameType',    # min: 1, max: 20; OPTIONAL
          NumberAttributeConstraints => {
            MaxValue => 'MyStringType',           # OPTIONAL
            MinValue => 'MyStringType',           # OPTIONAL
          },    # OPTIONAL
          Required                   => 1,    # OPTIONAL
          StringAttributeConstraints => {
            MaxLength => 'MyStringType',      # OPTIONAL
            MinLength => 'MyStringType',      # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      UserPoolId => 'MyUserPoolIdType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AddCustomAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

An array of custom attributes, such as Mutable and Name.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to add custom
attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddCustomAttributes in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

