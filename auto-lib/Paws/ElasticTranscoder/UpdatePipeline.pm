
package Paws::ElasticTranscoder::UpdatePipeline;
  use Moose;
  has AwsKmsKeyArn => (is => 'ro', isa => 'Str');
  has ContentConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has InputBucket => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Notifications => (is => 'ro', isa => 'Paws::ElasticTranscoder::Notifications');
  has Role => (is => 'ro', isa => 'Str');
  has ThumbnailConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/pipelines/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipeline - Arguments for method UpdatePipeline on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipeline on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method UpdatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipeline.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $UpdatePipelineResponse = $elastictranscoder->UpdatePipeline(
      Id            => 'MyId',
      AwsKmsKeyArn  => 'MyKeyArn',    # OPTIONAL
      ContentConfig => {
        Bucket      => 'MyBucketName',    # OPTIONAL
        Permissions => [
          {
            Access => [ 'MyAccessControl', ... ],   # max: 30; OPTIONAL
            Grantee => 'MyGrantee',                 # min: 1, max: 255; OPTIONAL
            GranteeType => 'MyGranteeType',         # OPTIONAL
          },
          ...
        ],                                          # max: 30; OPTIONAL
        StorageClass => 'MyStorageClass',           # OPTIONAL
      },    # OPTIONAL
      InputBucket   => 'MyBucketName',    # OPTIONAL
      Name          => 'MyName',          # OPTIONAL
      Notifications => {
        Completed   => 'MySnsTopic',      # OPTIONAL
        Error       => 'MySnsTopic',      # OPTIONAL
        Progressing => 'MySnsTopic',      # OPTIONAL
        Warning     => 'MySnsTopic',      # OPTIONAL
      },    # OPTIONAL
      Role            => 'MyRole',    # OPTIONAL
      ThumbnailConfig => {
        Bucket      => 'MyBucketName',    # OPTIONAL
        Permissions => [
          {
            Access => [ 'MyAccessControl', ... ],   # max: 30; OPTIONAL
            Grantee => 'MyGrantee',                 # min: 1, max: 255; OPTIONAL
            GranteeType => 'MyGranteeType',         # OPTIONAL
          },
          ...
        ],                                          # max: 30; OPTIONAL
        StorageClass => 'MyStorageClass',           # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Pipeline = $UpdatePipelineResponse->Pipeline;
    my $Warnings = $UpdatePipelineResponse->Warnings;

    # Returns a L<Paws::ElasticTranscoder::UpdatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder/UpdatePipeline>

=head1 ATTRIBUTES


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

The optional C<ContentConfig> object specifies information about the
Amazon S3 bucket in which you want Elastic Transcoder to save
transcoded files and playlists: which bucket to use, which users you
want to have access to the files, the type of access you want users to
have, and the storage class that you want to assign to the files.

If you specify values for C<ContentConfig>, you must also specify
values for C<ThumbnailConfig>.

If you specify values for C<ContentConfig> and C<ThumbnailConfig>, omit
the C<OutputBucket> object.

=over

=item *

B<Bucket>: The Amazon S3 bucket in which you want Elastic Transcoder to
save transcoded files and playlists.

=item *

B<Permissions> (Optional): The Permissions object specifies which users
you want to have access to transcoded files and the type of access you
want them to have. You can grant permissions to a maximum of 30 users
and/or predefined Amazon S3 groups.

=item *

B<Grantee Type>: Specify the type of value that appears in the
C<Grantee> object:

=over

=item *

B<Canonical>: The value in the C<Grantee> object is either the
canonical user ID for an AWS account or an origin access identity for
an Amazon CloudFront distribution. For more information about canonical
user IDs, see Access Control List (ACL) Overview in the Amazon Simple
Storage Service Developer Guide. For more information about using
CloudFront origin access identities to require that users use
CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access
Identity to Restrict Access to Your Amazon S3 Content.

A canonical user ID is not the same as an AWS account number.

=item *

B<Email>: The value in the C<Grantee> object is the registered email
address of an AWS account.

=item *

B<Group>: The value in the C<Grantee> object is one of the following
predefined Amazon S3 groups: C<AllUsers>, C<AuthenticatedUsers>, or
C<LogDelivery>.

=back

=item *

B<Grantee>: The AWS user or group that you want to have access to
transcoded files and playlists. To identify the user or group, you can
specify the canonical user ID for an AWS account, an origin access
identity for a CloudFront distribution, the registered email address of
an AWS account, or a predefined Amazon S3 group

=item *

B<Access>: The permission that you want to give to the AWS user that
you specified in C<Grantee>. Permissions are granted on the files that
Elastic Transcoder adds to the bucket, including playlists and video
files. Valid values include:

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

=item *

B<StorageClass>: The Amazon S3 storage class, C<Standard> or
C<ReducedRedundancy>, that you want Elastic Transcoder to assign to the
video files and playlists that it stores in your Amazon S3 bucket.

=back




=head2 B<REQUIRED> Id => Str

The ID of the pipeline that you want to update.



=head2 InputBucket => Str

The Amazon S3 bucket in which you saved the media files that you want
to transcode and the graphics that you want to use as watermarks.



=head2 Name => Str

The name of the pipeline. We recommend that the name be unique within
the AWS account, but uniqueness is not enforced.

Constraints: Maximum 40 characters



=head2 Notifications => L<Paws::ElasticTranscoder::Notifications>

The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
topic that you want to notify to report job status.

To receive notifications, you must also subscribe to the new topic in
the Amazon SNS console.

=over

=item *

B<Progressing>: The topic ARN for the Amazon Simple Notification
Service (Amazon SNS) topic that you want to notify when Elastic
Transcoder has started to process jobs that are added to this pipeline.
This is the ARN that Amazon SNS returned when you created the topic.

=item *

B<Complete>: The topic ARN for the Amazon SNS topic that you want to
notify when Elastic Transcoder has finished processing a job. This is
the ARN that Amazon SNS returned when you created the topic.

=item *

B<Warning>: The topic ARN for the Amazon SNS topic that you want to
notify when Elastic Transcoder encounters a warning condition. This is
the ARN that Amazon SNS returned when you created the topic.

=item *

B<Error>: The topic ARN for the Amazon SNS topic that you want to
notify when Elastic Transcoder encounters an error condition. This is
the ARN that Amazon SNS returned when you created the topic.

=back




=head2 Role => Str

The IAM Amazon Resource Name (ARN) for the role that you want Elastic
Transcoder to use to transcode jobs for this pipeline.



=head2 ThumbnailConfig => L<Paws::ElasticTranscoder::PipelineOutputConfig>

The C<ThumbnailConfig> object specifies several values, including the
Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail
files, which users you want to have access to the files, the type of
access you want users to have, and the storage class that you want to
assign to the files.

If you specify values for C<ContentConfig>, you must also specify
values for C<ThumbnailConfig> even if you don't want to create
thumbnails.

If you specify values for C<ContentConfig> and C<ThumbnailConfig>, omit
the C<OutputBucket> object.

=over

=item *

B<Bucket>: The Amazon S3 bucket in which you want Elastic Transcoder to
save thumbnail files.

=item *

B<Permissions> (Optional): The C<Permissions> object specifies which
users and/or predefined Amazon S3 groups you want to have access to
thumbnail files, and the type of access you want them to have. You can
grant permissions to a maximum of 30 users and/or predefined Amazon S3
groups.

=item *

B<GranteeType>: Specify the type of value that appears in the Grantee
object:

=over

=item *

B<Canonical>: The value in the C<Grantee> object is either the
canonical user ID for an AWS account or an origin access identity for
an Amazon CloudFront distribution.

A canonical user ID is not the same as an AWS account number.

=item *

B<Email>: The value in the C<Grantee> object is the registered email
address of an AWS account.

=item *

B<Group>: The value in the C<Grantee> object is one of the following
predefined Amazon S3 groups: C<AllUsers>, C<AuthenticatedUsers>, or
C<LogDelivery>.

=back

=item *

B<Grantee>: The AWS user or group that you want to have access to
thumbnail files. To identify the user or group, you can specify the
canonical user ID for an AWS account, an origin access identity for a
CloudFront distribution, the registered email address of an AWS
account, or a predefined Amazon S3 group.

=item *

B<Access>: The permission that you want to give to the AWS user that
you specified in C<Grantee>. Permissions are granted on the thumbnail
files that Elastic Transcoder adds to the bucket. Valid values include:

=over

=item *

C<READ>: The grantee can read the thumbnails and metadata for objects
that Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<READ_ACP>: The grantee can read the object ACL for thumbnails that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<WRITE_ACP>: The grantee can write the ACL for the thumbnails that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<FULL_CONTROL>: The grantee has C<READ>, C<READ_ACP>, and C<WRITE_ACP>
permissions for the thumbnails that Elastic Transcoder adds to the
Amazon S3 bucket.

=back

=item *

B<StorageClass>: The Amazon S3 storage class, C<Standard> or
C<ReducedRedundancy>, that you want Elastic Transcoder to assign to the
thumbnails that it stores in your Amazon S3 bucket.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipeline in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

