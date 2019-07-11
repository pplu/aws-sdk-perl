
package Paws::Comprehend::CreateDocumentClassifier;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DocumentClassifierName => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierInputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierOutputDataConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Comprehend::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocumentClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateDocumentClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateDocumentClassifier - Arguments for method CreateDocumentClassifier on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocumentClassifier on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateDocumentClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocumentClassifier.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateDocumentClassifierResponse =
      $comprehend->CreateDocumentClassifier(
      DataAccessRoleArn      => 'MyIamRoleArn',
      DocumentClassifierName => 'MyComprehendArnName',
      InputDataConfig        => {
        S3Uri => 'MyS3Uri',    # max: 1024

      },
      LanguageCode       => 'en',
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      OutputDataConfig   => {
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        S3Uri    => 'MyS3Uri',       # max: 1024
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      VolumeKmsKeyId => 'MyKmsKeyId',    # OPTIONAL
      VpcConfig      => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...       # min: 1, max: 32
        ],                               # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...              # min: 1, max: 32
        ],                               # min: 1, max: 16

      },    # OPTIONAL
      );

    # Results:
    my $DocumentClassifierArn =
      $CreateDocumentClassifierResponse->DocumentClassifierArn;

    # Returns a L<Paws::Comprehend::CreateDocumentClassifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateDocumentClassifier>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
role that grants Amazon Comprehend read access to your input data.



=head2 B<REQUIRED> DocumentClassifierName => Str

The name of the document classifier.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

Specifies the format and location of the input data for the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. You can specify English ("en") or
Spanish ("es"). All documents must be in the same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">

=head2 OutputDataConfig => L<Paws::Comprehend::DocumentClassifierOutputDataConfig>

Enables the addition of output results configuration parameters for
custom classifier jobs.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags to be associated with the document classifier being created. A tag
is a key-value pair that adds as a metadata to a resource used by
Amazon Comprehend. For example, a tag with "Sales" as the key might be
added to a resource to indicate its use by the sales department.



=head2 VolumeKmsKeyId => Str

ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
uses to encrypt data on the storage volume attached to the ML compute
instance(s) that process the analysis job. The VolumeKmsKeyId can be
either of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head2 VpcConfig => L<Paws::Comprehend::VpcConfig>

Configuration parameters for an optional private Virtual Private Cloud
(VPC) containing the resources you are using for your custom
classifier. For more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocumentClassifier in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

