
package Paws::AccessAnalyzer::CreateAccessPreview;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzerArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configurations => (is => 'ro', isa => 'Paws::AccessAnalyzer::ConfigurationsMap', traits => ['NameInRequest'], request_name => 'configurations', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessPreview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/access-preview');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::CreateAccessPreviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CreateAccessPreview - Arguments for method CreateAccessPreview on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessPreview on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method CreateAccessPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessPreview.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $CreateAccessPreviewResponse = $access -analyzer->CreateAccessPreview(
      AnalyzerArn    => 'MyAnalyzerArn',
      Configurations => {
        'MyConfigurationsMapKey' => {
          IamRole => {
            TrustPolicy => 'MyIamTrustPolicy',    # OPTIONAL
          },    # OPTIONAL
          KmsKey => {
            Grants => [
              {
                GranteePrincipal => 'MyGranteePrincipal',
                IssuingAccount   => 'MyIssuingAccount',
                Operations       => [
                  'CreateGrant',
                  ... # values: CreateGrant, Decrypt, DescribeKey, Encrypt, GenerateDataKey, GenerateDataKeyPair, GenerateDataKeyPairWithoutPlaintext, GenerateDataKeyWithoutPlaintext, GetPublicKey, ReEncryptFrom, ReEncryptTo, RetireGrant, Sign, Verify
                ],
                Constraints => {
                  EncryptionContextEquals =>
                    { 'MyKmsConstraintsKey' => 'MyKmsConstraintsValue', }
                  ,    # OPTIONAL
                  EncryptionContextSubset =>
                    { 'MyKmsConstraintsKey' => 'MyKmsConstraintsValue', }
                  ,    # OPTIONAL
                },    # OPTIONAL
                RetiringPrincipal => 'MyRetiringPrincipal',    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            KeyPolicies => { 'MyPolicyName' => 'MyKmsKeyPolicy', },   # OPTIONAL
          },    # OPTIONAL
          S3Bucket => {
            AccessPoints => {
              'MyAccessPointArn' => {
                AccessPointPolicy => 'MyAccessPointPolicy',    # OPTIONAL
                NetworkOrigin     => {
                  InternetConfiguration => {

                  },                                           # OPTIONAL
                  VpcConfiguration => {
                    VpcId => 'MyVpcId',

                  },                                           # OPTIONAL
                },    # OPTIONAL
                PublicAccessBlock => {
                  IgnorePublicAcls      => 1,
                  RestrictPublicBuckets => 1,

                },    # OPTIONAL
              },
            },    # OPTIONAL
            BucketAclGrants => [
              {
                Grantee => {
                  Id  => 'MyAclCanonicalId',    # OPTIONAL
                  Uri => 'MyAclUri',            # OPTIONAL
                },
                Permission => 'READ'
                ,    # values: READ, WRITE, READ_ACP, WRITE_ACP, FULL_CONTROL

              },
              ...
            ],    # OPTIONAL
            BucketPolicy            => 'MyS3BucketPolicy',    # OPTIONAL
            BucketPublicAccessBlock => {
              IgnorePublicAcls      => 1,
              RestrictPublicBuckets => 1,

            },                                                # OPTIONAL
          },    # OPTIONAL
          SecretsManagerSecret => {
            KmsKeyId     => 'MySecretsManagerSecretKmsId',     # OPTIONAL
            SecretPolicy => 'MySecretsManagerSecretPolicy',    # OPTIONAL
          },    # OPTIONAL
          SqsQueue => {
            QueuePolicy => 'MySqsQueuePolicy',    # OPTIONAL
          },    # OPTIONAL
        },
      },
      ClientToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Id = $CreateAccessPreviewResponse->Id;

    # Returns a L<Paws::AccessAnalyzer::CreateAccessPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/CreateAccessPreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the account analyzer
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources)
used to generate the access preview. You can only create an access
preview for analyzers with an C<Account> type and C<Active> status.



=head2 ClientToken => Str

A client token.



=head2 B<REQUIRED> Configurations => L<Paws::AccessAnalyzer::ConfigurationsMap>

Access control configuration for your resource that is used to generate
the access preview. The access preview includes findings for external
access allowed to the resource with the proposed access control
configuration. The configuration must contain exactly one element.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessPreview in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

