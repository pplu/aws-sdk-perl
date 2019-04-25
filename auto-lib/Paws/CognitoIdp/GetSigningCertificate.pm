
package Paws::CognitoIdp::GetSigningCertificate;
  use Moose;
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::GetSigningCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetSigningCertificate - Arguments for method GetSigningCertificate on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSigningCertificate on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetSigningCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSigningCertificate.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetSigningCertificateResponse = $cognito -idp->GetSigningCertificate(
      UserPoolId => 'MyUserPoolIdType',

    );

    # Results:
    my $Certificate = $GetSigningCertificateResponse->Certificate;

    # Returns a L<Paws::CognitoIdp::GetSigningCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/GetSigningCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSigningCertificate in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

