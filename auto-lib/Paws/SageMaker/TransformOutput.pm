package Paws::SageMaker::TransformOutput;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str');
  has AssembleWith => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformOutput object:

  $service_obj->Method(Att1 => { Accept => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Accept

=head1 DESCRIPTION

Describes the results of a transform job.

=head1 ATTRIBUTES


=head2 Accept => Str

  The MIME type used to specify the output data. Amazon SageMaker uses
the MIME type with each http call to transfer data from the transform
job.


=head2 AssembleWith => Str

  Defines how to assemble the results of the transform job as a single S3
object. Choose a format that is most convenient to you. To concatenate
the results in binary format, specify C<None>. To add a newline
character at the end of every transformed record, specify C<Line>.


=head2 KmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
to encrypt the model artifacts at rest using Amazon S3 server-side
encryption. The C<KmsKeyId> can be any of the following formats:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias name ARN:
C<arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias>

=back

If you don't provide a KMS key ID, Amazon SageMaker uses the default
KMS key for Amazon S3 for your role's account. For more information,
see KMS-Managed Encryption Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html)
in the I<Amazon Simple Storage Service Developer Guide.>

The KMS key policy must grant permission to the IAM role that you
specify in your CreateModel request. For more information, see Using
Key Policies in AWS KMS
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 B<REQUIRED> S3OutputPath => Str

  The Amazon S3 path where you want Amazon SageMaker to store the results
of the transform job. For example, C<s3://bucket-name/key-name-prefix>.

For every S3 object used as input for the transform job, batch
transform stores the transformed data with an .C<out> suffix in a
corresponding subfolder in the location in the output prefix. For
example, for the input data stored at
C<s3://bucket-name/input-name-prefix/dataset01/data.csv>, batch
transform stores the transformed data at
C<s3://bucket-name/output-name-prefix/input-name-prefix/data.csv.out>.
Batch transform doesn't upload partially processed objects. For an
input S3 object that contains multiple records, it creates an .C<out>
file only if the transform job succeeds on the entire file. When the
input contains multiple S3 objects, the batch transform job processes
the listed S3 objects and uploads only the output for successfully
processed objects. If any object fails in the transform job batch
transform marks the job as failed to prompt investigation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

