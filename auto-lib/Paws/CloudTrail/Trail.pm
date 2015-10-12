package Paws::CloudTrail::Trail;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LogFileValidationEnabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has TrailARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::Trail

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::Trail object:

  $service_obj->Method(Att1 => { CloudWatchLogsLogGroupArn => $value, ..., TrailARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::Trail object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsLogGroupArn

=head1 ATTRIBUTES

=head2 CloudWatchLogsLogGroupArn => Str

  

Specifies an Amazon Resource Name (ARN), a unique identifier that
represents the log group to which CloudTrail logs will be delivered.










=head2 CloudWatchLogsRoleArn => Str

  

Specifies the role for the CloudWatch Logs endpoint to assume to write
to a user's log group.










=head2 IncludeGlobalServiceEvents => Bool

  

Set to B<True> to include AWS API calls from AWS global services such
as IAM. Otherwise, B<False>.










=head2 KmsKeyId => Str

  

Specifies the KMS key ID that encrypts the logs delivered by
CloudTrail. The value is a fully specified ARN to a KMS key in the
format:

C<arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012>










=head2 LogFileValidationEnabled => Bool

  

Specifies whether log file validation is enabled.










=head2 Name => Str

  

Name of the trail set by calling CreateTrail. The maximum length is 128
characters.










=head2 S3BucketName => Str

  

Name of the Amazon S3 bucket into which CloudTrail delivers your trail
files. See Amazon S3 Bucket Naming Requirements.










=head2 S3KeyPrefix => Str

  

Specifies the Amazon S3 key prefix that comes after the name of the
bucket you have designated for log file delivery. For more information,
see Finding Your CloudTrail Log Files.The maximum length is 200
characters.










=head2 SnsTopicName => Str

  

Name of the existing Amazon SNS topic that CloudTrail uses to notify
the account owner when new CloudTrail log files have been delivered.
The maximum length is 256 characters.










=head2 TrailARN => Str

  

The Amazon Resource Name of the trail. The C<TrailARN> format is
C<arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail>.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

