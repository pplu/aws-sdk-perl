package Paws::SageMaker::OutputDataConfig;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::OutputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::OutputDataConfig object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::OutputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

Provides information about how to store model training results (model
artifacts).

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
to encrypt the model artifacts at rest using Amazon S3 server-side
encryption.

If the configuration of the output S3 bucket requires server-side
encryption for objects, and you don't provide the KMS key ID, Amazon
SageMaker uses the default service key. For more information, see
KMS-Managed Encryption Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html)
in Amazon Simple Storage Service developer guide.

The KMS key policy must grant permission to the IAM role you specify in
your C<CreateTrainingJob> request. Using Key Policies in AWS KMS
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the AWS Key Management Service Developer Guide.


=head2 B<REQUIRED> S3OutputPath => Str

  Identifies the S3 path where you want Amazon SageMaker to store the
model artifacts. For example, C<s3://bucket-name/key-name-prefix>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

