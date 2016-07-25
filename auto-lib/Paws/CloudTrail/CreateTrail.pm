
package Paws::CloudTrail::CreateTrail;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str');
  has EnableLogFileValidation => (is => 'ro', isa => 'Bool');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has IsMultiRegionTrail => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::CreateTrailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateTrail - Arguments for method CreateTrail on Paws::CloudTrail

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrail on the 
AWS CloudTrail service. Use the attributes of this class
as arguments to method CreateTrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrail.

As an example:

  $service_obj->CreateTrail(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CloudWatchLogsLogGroupArn => Str

Specifies a log group name using an Amazon Resource Name (ARN), a
unique identifier that represents the log group to which CloudTrail
logs will be delivered. Not required unless you specify
CloudWatchLogsRoleArn.



=head2 CloudWatchLogsRoleArn => Str

Specifies the role for the CloudWatch Logs endpoint to assume to write
to a user's log group.



=head2 EnableLogFileValidation => Bool

Specifies whether log file integrity validation is enabled. The default
is false.

When you disable log file integrity validation, the chain of digest
files is broken after one hour. CloudTrail will not create digest files
for log files that were delivered during a period in which log file
integrity validation was disabled. For example, if you enable log file
integrity validation at noon on January 1, disable it at noon on
January 2, and re-enable it at noon on January 10, digest files will
not be created for the log files delivered from noon on January 2 to
noon on January 10. The same applies whenever you stop CloudTrail
logging or delete a trail.



=head2 IncludeGlobalServiceEvents => Bool

Specifies whether the trail is publishing events from global services
such as IAM to the log files.



=head2 IsMultiRegionTrail => Bool

Specifies whether the trail is created in the current region or in all
regions. The default is false.



=head2 KmsKeyId => Str

Specifies the KMS key ID to use to encrypt the logs delivered by
CloudTrail. The value can be a an alias name prefixed by "alias/", a
fully specified ARN to an alias, a fully specified ARN to a key, or a
globally unique identifier.

Examples:

=over

=item *

alias/MyAliasName

=item *

arn:aws:kms:us-east-1:123456789012:alias/MyAliasName

=item *

arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012

=item *

12345678-1234-1234-1234-123456789012

=back




=head2 B<REQUIRED> Name => Str

Specifies the name of the trail. The name must meet the following
requirements:

=over

=item *

Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
underscores (_), or dashes (-)

=item *

Start with a letter or number, and end with a letter or number

=item *

Be between 3 and 128 characters

=item *

Have no adjacent periods, underscores or dashes. Names like
C<my-_namespace> and C<my--namespace> are invalid.

=item *

Not be in IP address format (for example, 192.168.5.4)

=back




=head2 B<REQUIRED> S3BucketName => Str

Specifies the name of the Amazon S3 bucket designated for publishing
log files. See Amazon S3 Bucket Naming Requirements.



=head2 S3KeyPrefix => Str

Specifies the Amazon S3 key prefix that comes after the name of the
bucket you have designated for log file delivery. For more information,
see Finding Your CloudTrail Log Files. The maximum length is 200
characters.



=head2 SnsTopicName => Str

Specifies the name of the Amazon SNS topic defined for notification of
log file delivery. The maximum length is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrail in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

