
package Paws::CodeArtifact::CreateDomain;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::CreateDomainResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::CreateDomain - Arguments for method CreateDomain on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomain on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method CreateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomain.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $CreateDomainResult = $codeartifact->CreateDomain(
      Domain        => 'MyDomainName',
      EncryptionKey => 'MyArn',          # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Domain = $CreateDomainResult->Domain;

    # Returns a L<Paws::CodeArtifact::CreateDomainResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/CreateDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain to create. All domain names in an AWS Region
that are in the same AWS account must be unique. The domain name is
used as the prefix in DNS hostnames. Do not use sensitive information
in a domain name because it is publicly discoverable.



=head2 EncryptionKey => Str

The encryption key for the domain. This is used to encrypt content
stored in a domain. An encryption key can be a key ID, a key Amazon
Resource Name (ARN), a key alias, or a key alias ARN. To specify an
C<encryptionKey>, your IAM role must have C<kms:DescribeKey> and
C<kms:CreateGrant> permissions on the encryption key that is used. For
more information, see DescribeKey
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax)
in the I<AWS Key Management Service API Reference> and AWS KMS API
Permissions Reference
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
in the I<AWS Key Management Service Developer Guide>.

CodeArtifact supports only symmetric CMKs. Do not associate an
asymmetric CMK with your domain. For more information, see Using
symmetric and asymmetric keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.



=head2 Tags => ArrayRef[L<Paws::CodeArtifact::Tag>]

One or more tag key-value pairs for the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomain in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

