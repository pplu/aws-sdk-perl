package Paws::ElasticTranscoder::Pipeline;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AwsKmsKeyArn => (is => 'ro', isa => 'Str');
  has ContentConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');
  has Id => (is => 'ro', isa => 'Str');
  has InputBucket => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Notifications => (is => 'ro', isa => 'Paws::ElasticTranscoder::Notifications');
  has OutputBucket => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has ThumbnailConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Pipeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Pipeline object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ThumbnailConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Pipeline object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The pipeline (queue) that is used to manage jobs.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the pipeline.


=head2 AwsKmsKeyArn => Str

  The AWS Key Management Service (AWS KMS) key that you want to use with
this pipeline.

If you use either C<s3> or C<s3-aws-kms> as your C<Encryption:Mode>,
you don't need to provide a key with your job because a default key,
known as an AWS-KMS key, is created for you automatically. You need to
provide an AWS-KMS key only if you want to use a non-default AWS-KMS
key, or if you are using an C<Encryption:Mode> of C<aes-cbc-pkcs7>,
C<aes-ctr>, or C<aes-gcm>.


=head2 ContentConfig => L<Paws::ElasticTranscoder::PipelineOutputConfig>

  Information about the Amazon S3 bucket in which you want Elastic
Transcoder to save transcoded files and playlists. Either you specify
both C<ContentConfig> and C<ThumbnailConfig>, or you specify
C<OutputBucket>.

=over

=item *

B<Bucket>: The Amazon S3 bucket in which you want Elastic Transcoder to
save transcoded files and playlists.

=item *

B<Permissions>: A list of the users and/or predefined Amazon S3 groups
you want to have access to transcoded files and playlists, and the type
of access that you want them to have.

=over

=item *

GranteeType: The type of value that appears in the C<Grantee> object:

=over

=item *

C<Canonical>: Either the canonical user ID for an AWS account or an
origin access identity for an Amazon CloudFront distribution.

=item *

C<Email>: The registered email address of an AWS account.

=item *

C<Group>: One of the following predefined Amazon S3 groups:
C<AllUsers>, C<AuthenticatedUsers>, or C<LogDelivery>.

=back

=item *

C<Grantee>: The AWS user or group that you want to have access to
transcoded files and playlists.

=item *

C<Access>: The permission that you want to give to the AWS user that is
listed in C<Grantee>. Valid values include:

=over

=item *

C<READ>: The grantee can read the objects and metadata for objects that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<READ_ACP>: The grantee can read the object ACL for objects that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<WRITE_ACP>: The grantee can write the ACL for the objects that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<FULL_CONTROL>: The grantee has C<READ>, C<READ_ACP>, and C<WRITE_ACP>
permissions for the objects that Elastic Transcoder adds to the Amazon
S3 bucket.

=back

=back

=item *

B<StorageClass>: The Amazon S3 storage class, Standard or
ReducedRedundancy, that you want Elastic Transcoder to assign to the
video files and playlists that it stores in your Amazon S3 bucket.

=back



=head2 Id => Str

  The identifier for the pipeline. You use this value to identify the
pipeline in which you want to perform a variety of operations, such as
creating a job or a preset.


=head2 InputBucket => Str

  The Amazon S3 bucket from which Elastic Transcoder gets media files for
transcoding and the graphics files, if any, that you want to use for
watermarks.


=head2 Name => Str

  The name of the pipeline. We recommend that the name be unique within
the AWS account, but uniqueness is not enforced.

Constraints: Maximum 40 characters


=head2 Notifications => L<Paws::ElasticTranscoder::Notifications>

  The Amazon Simple Notification Service (Amazon SNS) topic that you want
to notify to report job status.

To receive notifications, you must also subscribe to the new topic in
the Amazon SNS console.

=over

=item *

B<Progressing> (optional): The Amazon Simple Notification Service
(Amazon SNS) topic that you want to notify when Elastic Transcoder has
started to process the job.

=item *

B<Complete> (optional): The Amazon SNS topic that you want to notify
when Elastic Transcoder has finished processing the job.

=item *

B<Warning> (optional): The Amazon SNS topic that you want to notify
when Elastic Transcoder encounters a warning condition.

=item *

B<Error> (optional): The Amazon SNS topic that you want to notify when
Elastic Transcoder encounters an error condition.

=back



=head2 OutputBucket => Str

  The Amazon S3 bucket in which you want Elastic Transcoder to save
transcoded files, thumbnails, and playlists. Either you specify this
value, or you specify both C<ContentConfig> and C<ThumbnailConfig>.


=head2 Role => Str

  The IAM Amazon Resource Name (ARN) for the role that Elastic Transcoder
uses to transcode jobs for this pipeline.


=head2 Status => Str

  The current status of the pipeline:

=over

=item *

C<Active>: The pipeline is processing jobs.

=item *

C<Paused>: The pipeline is not currently processing jobs.

=back



=head2 ThumbnailConfig => L<Paws::ElasticTranscoder::PipelineOutputConfig>

  Information about the Amazon S3 bucket in which you want Elastic
Transcoder to save thumbnail files. Either you specify both
C<ContentConfig> and C<ThumbnailConfig>, or you specify
C<OutputBucket>.

=over

=item *

C<Bucket>: The Amazon S3 bucket in which you want Elastic Transcoder to
save thumbnail files.

=item *

C<Permissions>: A list of the users and/or predefined Amazon S3 groups
you want to have access to thumbnail files, and the type of access that
you want them to have.

=over

=item *

GranteeType: The type of value that appears in the Grantee object:

=over

=item *

C<Canonical>: Either the canonical user ID for an AWS account or an
origin access identity for an Amazon CloudFront distribution.

A canonical user ID is not the same as an AWS account number.

=item *

C<Email>: The registered email address of an AWS account.

=item *

C<Group>: One of the following predefined Amazon S3 groups:
C<AllUsers>, C<AuthenticatedUsers>, or C<LogDelivery>.

=back

=item *

C<Grantee>: The AWS user or group that you want to have access to
thumbnail files.

=item *

Access: The permission that you want to give to the AWS user that is
listed in Grantee. Valid values include:

=over

=item *

C<READ>: The grantee can read the thumbnails and metadata for
thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<READ_ACP>: The grantee can read the object ACL for thumbnails that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<WRITE_ACP>: The grantee can write the ACL for the thumbnails that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<FULL_CONTROL>: The grantee has READ, READ_ACP, and WRITE_ACP
permissions for the thumbnails that Elastic Transcoder adds to the
Amazon S3 bucket.

=back

=back

=item *

C<StorageClass>: The Amazon S3 storage class, C<Standard> or
C<ReducedRedundancy>, that you want Elastic Transcoder to assign to the
thumbnails that it stores in your Amazon S3 bucket.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

