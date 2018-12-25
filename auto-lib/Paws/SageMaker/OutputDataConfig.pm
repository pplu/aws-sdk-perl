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
encryption. The C<KmsKeyId> can be any of the following formats:

=over

=item *

// KMS Key ID

C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

// Amazon Resource Name (ARN) of a KMS Key

C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

// KMS Key Alias

C<"alias/ExampleAlias">

=item *

// Amazon Resource Name (ARN) of a KMS Key Alias

C<"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias">

=back

If you don't provide a KMS key ID, Amazon SageMaker uses the default
KMS key for Amazon S3 for your role's account. For more information,
see KMS-Managed Encryption Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html)
in the I<Amazon Simple Storage Service Developer Guide.>

The KMS key policy must grant permission to the IAM role that you
specify in your C<CreateTramsformJob> request. For more information,
see Using Key Policies in AWS KMS
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 B<REQUIRED> S3OutputPath => Str

  Identifies the S3 path where you want Amazon SageMaker to store the
model artifacts. For example, C<s3://bucket-name/key-name-prefix>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

