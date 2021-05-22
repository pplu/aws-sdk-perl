
package Paws::Synthetics::CreateCanary;
  use Moose;
  has ArtifactS3Location => (is => 'ro', isa => 'Str', required => 1);
  has Code => (is => 'ro', isa => 'Paws::Synthetics::CanaryCodeInput', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has FailureRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RunConfig => (is => 'ro', isa => 'Paws::Synthetics::CanaryRunConfigInput');
  has RuntimeVersion => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::Synthetics::CanaryScheduleInput', required => 1);
  has SuccessRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'Paws::Synthetics::TagMap');
  has VpcConfig => (is => 'ro', isa => 'Paws::Synthetics::VpcConfigInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCanary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canary');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::CreateCanaryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CreateCanary - Arguments for method CreateCanary on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCanary on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method CreateCanary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCanary.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $CreateCanaryResponse = $synthetics->CreateCanary(
      ArtifactS3Location => 'MyString',
      Code               => {
        Handler   => 'MyString',    # min: 1, max: 1024
        S3Bucket  => 'MyString',    # min: 1, max: 1024
        S3Key     => 'MyString',    # min: 1, max: 1024
        S3Version => 'MyString',    # min: 1, max: 1024
        ZipFile   => 'BlobBlob',    # min: 1, max: 10000000; OPTIONAL
      },
      ExecutionRoleArn => 'MyRoleArn',
      Name             => 'MyCanaryName',
      RuntimeVersion   => 'MyString',
      Schedule         => {
        Expression        => 'MyString',    # min: 1, max: 1024
        DurationInSeconds => 1,             # max: 31622400; OPTIONAL
      },
      FailureRetentionPeriodInDays => 1,    # OPTIONAL
      RunConfig                    => {
        ActiveTracing => 1,                 # OPTIONAL
        EnvironmentVariables =>
          { 'MyEnvironmentVariableName' => 'MyEnvironmentVariableValue', }
        ,                                   # OPTIONAL
        MemoryInMB       => 1,              # min: 960, max: 3008; OPTIONAL
        TimeoutInSeconds => 1,              # min: 3, max: 840; OPTIONAL
      },    # OPTIONAL
      SuccessRetentionPeriodInDays => 1,    # OPTIONAL
      Tags                         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [ 'MySecurityGroupId', ... ],    # max: 5; OPTIONAL
        SubnetIds        => [ 'MySubnetId',        ... ],    # max: 16; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Canary = $CreateCanaryResponse->Canary;

    # Returns a L<Paws::Synthetics::CreateCanaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/CreateCanary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactS3Location => Str

The location in Amazon S3 where Synthetics stores artifacts from the
test runs of this canary. Artifacts include the log file, screenshots,
and HAR files.



=head2 B<REQUIRED> Code => L<Paws::Synthetics::CanaryCodeInput>

A structure that includes the entry point from which the canary should
start running your script. If the script is stored in an S3 bucket, the
bucket name, key, and version are also included.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The ARN of the IAM role to be used to run the canary. This role must
already exist, and must include C<lambda.amazonaws.com> as a principal
in the trust policy. The role must also have the following permissions:

=over

=item *

C<s3:PutObject>

=item *

C<s3:GetBucketLocation>

=item *

C<s3:ListAllMyBuckets>

=item *

C<cloudwatch:PutMetricData>

=item *

C<logs:CreateLogGroup>

=item *

C<logs:CreateLogStream>

=item *

C<logs:PutLogEvents>

=back




=head2 FailureRetentionPeriodInDays => Int

The number of days to retain data about failed runs of this canary. If
you omit this field, the default of 31 days is used. The valid range is
1 to 455 days.



=head2 B<REQUIRED> Name => Str

The name for this canary. Be sure to give it a descriptive name that
distinguishes it from other canaries in your account.

Do not include secrets or proprietary information in your canary names.
The canary name makes up part of the canary ARN, and the ARN is
included in outbound calls over the internet. For more information, see
Security Considerations for Synthetics Canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).



=head2 RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>

A structure that contains the configuration for individual canary runs,
such as timeout value.



=head2 B<REQUIRED> RuntimeVersion => Str

Specifies the runtime version to use for the canary. For a list of
valid runtime versions and more information about runtime versions, see
Canary Runtime Versions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).



=head2 B<REQUIRED> Schedule => L<Paws::Synthetics::CanaryScheduleInput>

A structure that contains information about how often the canary is to
run and when these test runs are to stop.



=head2 SuccessRetentionPeriodInDays => Int

The number of days to retain data about successful runs of this canary.
If you omit this field, the default of 31 days is used. The valid range
is 1 to 455 days.



=head2 Tags => L<Paws::Synthetics::TagMap>

A list of key-value pairs to associate with the canary. You can
associate as many as 50 tags with a canary.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only the resources that have certain tag values.



=head2 VpcConfig => L<Paws::Synthetics::VpcConfigInput>

If this canary is to test an endpoint in a VPC, this structure contains
information about the subnet and security groups of the VPC endpoint.
For more information, see Running a Canary in a VPC
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCanary in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

