package Paws::SES::S3Action;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has ObjectKeyPrefix => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::S3Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::S3Action object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::S3Action object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

When included in a receipt rule, this action saves the received message
to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally,
publishes a notification to Amazon Simple Notification Service (Amazon
SNS).

To enable Amazon SES to write emails to your Amazon S3 bucket, use an
AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic
of another account, Amazon SES must have permission to access those
resources. For information about giving permissions, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html).

When you save your emails to an Amazon S3 bucket, the maximum email
size (including headers) is 30 MB. Emails larger than that will bounce.

For information about specifying Amazon S3 actions in receipt rules,
see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

  The name of the Amazon S3 bucket that incoming email will be saved to.


=head2 KmsKeyArn => Str

  The customer master key that Amazon SES should use to encrypt your
emails before saving them to the Amazon S3 bucket. You can use the
default master key or a custom master key you created in AWS KMS as
follows:

=over

=item *

To use the default master key, provide an ARN in the form of
C<arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses>. For
example, if your AWS account ID is 123456789012 and you want to use the
default master key in the US West (Oregon) region, the ARN of the
default master key would be
C<arn:aws:kms:us-west-2:123456789012:alias/aws/ses>. If you use the
default master key, you don't need to perform any extra steps to give
Amazon SES permission to use the key.

=item *

To use a custom master key you created in AWS KMS, provide the ARN of
the master key and ensure that you add a statement to your key's policy
to give Amazon SES permission to use it. For more information about
giving permissions, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html).

=back

For more information about key policies, see the AWS KMS Developer
Guide
(http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html).
If you do not specify a master key, Amazon SES will not encrypt your
emails.

Your mail is encrypted by Amazon SES using the Amazon S3 encryption
client before the mail is submitted to Amazon S3 for storage. It is not
encrypted using Amazon S3 server-side encryption. This means that you
must use the Amazon S3 encryption client to decrypt the email after
retrieving it from Amazon S3, as the service has no access to use your
AWS KMS keys for decryption. This encryption client is currently
available with the AWS SDK for Java
(http://aws.amazon.com/sdk-for-java/) and AWS SDK for Ruby
(http://aws.amazon.com/sdk-for-ruby/) only. For more information about
client-side encryption using AWS KMS master keys, see the Amazon S3
Developer Guide
(http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).


=head2 ObjectKeyPrefix => Str

  The key prefix of the Amazon S3 bucket. The key prefix is similar to a
directory name that enables you to store similar data under the same
directory in a bucket.


=head2 TopicArn => Str

  The ARN of the Amazon SNS topic to notify when the message is saved to
the Amazon S3 bucket. An example of an Amazon SNS topic ARN is
C<arn:aws:sns:us-west-2:123456789012:MyTopic>. For more information
about Amazon SNS topics, see the Amazon SNS Developer Guide
(http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

