# Generated by default/object.tt
package Paws::Synthetics::Canary;
  use Moose;
  has ArtifactS3Location => (is => 'ro', isa => 'Str');
  has Code => (is => 'ro', isa => 'Paws::Synthetics::CanaryCodeOutput');
  has EngineArn => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has FailureRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RunConfig => (is => 'ro', isa => 'Paws::Synthetics::CanaryRunConfigOutput');
  has RuntimeVersion => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Synthetics::CanaryScheduleOutput');
  has Status => (is => 'ro', isa => 'Paws::Synthetics::CanaryStatus');
  has SuccessRetentionPeriodInDays => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'Paws::Synthetics::TagMap');
  has Timeline => (is => 'ro', isa => 'Paws::Synthetics::CanaryTimeline');
  has VpcConfig => (is => 'ro', isa => 'Paws::Synthetics::VpcConfigOutput');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::Canary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Synthetics::Canary object:

  $service_obj->Method(Att1 => { ArtifactS3Location => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Synthetics::Canary object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactS3Location

=head1 DESCRIPTION

This structure contains all information about one canary in your
account.

=head1 ATTRIBUTES


=head2 ArtifactS3Location => Str

The location in Amazon S3 where Synthetics stores artifacts from the
runs of this canary. Artifacts include the log file, screenshots, and
HAR files.


=head2 Code => L<Paws::Synthetics::CanaryCodeOutput>




=head2 EngineArn => Str

The ARN of the Lambda function that is used as your canary's engine.
For more information about Lambda ARN format, see Resources and
Conditions for Lambda Actions
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-api-permissions-ref.html).


=head2 ExecutionRoleArn => Str

The ARN of the IAM role used to run the canary. This role must include
C<lambda.amazonaws.com> as a principal in the trust policy.


=head2 FailureRetentionPeriodInDays => Int

The number of days to retain data about failed runs of this canary.


=head2 Id => Str

The unique ID of this canary.


=head2 Name => Str

The name of the canary.


=head2 RunConfig => L<Paws::Synthetics::CanaryRunConfigOutput>




=head2 RuntimeVersion => Str

Specifies the runtime version to use for the canary. For more
information about runtime versions, see Canary Runtime Versions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).


=head2 Schedule => L<Paws::Synthetics::CanaryScheduleOutput>

A structure that contains information about how often the canary is to
run, and when these runs are to stop.


=head2 Status => L<Paws::Synthetics::CanaryStatus>

A structure that contains information about the canary's status.


=head2 SuccessRetentionPeriodInDays => Int

The number of days to retain data about successful runs of this canary.


=head2 Tags => L<Paws::Synthetics::TagMap>

The list of key-value pairs that are associated with the canary.


=head2 Timeline => L<Paws::Synthetics::CanaryTimeline>

A structure that contains information about when the canary was
created, modified, and most recently run.


=head2 VpcConfig => L<Paws::Synthetics::VpcConfigOutput>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

