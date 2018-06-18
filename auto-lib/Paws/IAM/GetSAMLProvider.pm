
package Paws::IAM::GetSAMLProvider;
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetSAMLProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetSAMLProvider - Arguments for method GetSAMLProvider on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSAMLProvider on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetSAMLProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSAMLProvider.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetSAMLProviderResponse = $iam->GetSAMLProvider(
      SAMLProviderArn => 'MyarnType',

    );

    # Results:
    my $CreateDate           = $GetSAMLProviderResponse->CreateDate;
    my $SAMLMetadataDocument = $GetSAMLProviderResponse->SAMLMetadataDocument;
    my $ValidUntil           = $GetSAMLProviderResponse->ValidUntil;

    # Returns a L<Paws::IAM::GetSAMLProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetSAMLProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SAMLProviderArn => Str

The Amazon Resource Name (ARN) of the SAML provider resource object in
IAM to get information about.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSAMLProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

