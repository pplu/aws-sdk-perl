# Generated from json/callargs_class.tt

package Paws::CognitoIdp::VerifyUserAttribute;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has AccessToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AttributeName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Code => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'VerifyUserAttribute');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::VerifyUserAttributeResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Code' => {
                           'type' => 'Str'
                         },
               'AccessToken' => {
                                  'type' => 'Str'
                                },
               'AttributeName' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'Code' => 1,
                    'AccessToken' => 1,
                    'AttributeName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::VerifyUserAttribute - Arguments for method VerifyUserAttribute on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyUserAttribute on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method VerifyUserAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyUserAttribute.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $VerifyUserAttributeResponse = $cognito -idp->VerifyUserAttribute(
      AccessToken   => 'MyTokenModelType',
      AttributeName => 'MyAttributeNameType',
      Code          => 'MyConfirmationCodeType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/VerifyUserAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

Represents the access token of the request to verify user attributes.



=head2 B<REQUIRED> AttributeName => Str

The attribute name in the request to verify user attributes.



=head2 B<REQUIRED> Code => Str

The verification code in the request to verify user attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyUserAttribute in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

