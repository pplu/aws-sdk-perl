package Paws::Inspector::Assessment;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', xmlname => 'applicationArn', request_name => 'applicationArn', traits => ['Unwrapped','NameInRequest']);
  has AssessmentArn => (is => 'ro', isa => 'Str', xmlname => 'assessmentArn', request_name => 'assessmentArn', traits => ['Unwrapped','NameInRequest']);
  has AssessmentName => (is => 'ro', isa => 'Str', xmlname => 'assessmentName', request_name => 'assessmentName', traits => ['Unwrapped','NameInRequest']);
  has AssessmentState => (is => 'ro', isa => 'Str', xmlname => 'assessmentState', request_name => 'assessmentState', traits => ['Unwrapped','NameInRequest']);
  has DataCollected => (is => 'ro', isa => 'Bool', xmlname => 'dataCollected', request_name => 'dataCollected', traits => ['Unwrapped','NameInRequest']);
  has DurationInSeconds => (is => 'ro', isa => 'Int', xmlname => 'durationInSeconds', request_name => 'durationInSeconds', traits => ['Unwrapped','NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', xmlname => 'endTime', request_name => 'endTime', traits => ['Unwrapped','NameInRequest']);
  has FailureMessage => (is => 'ro', isa => 'Str', xmlname => 'failureMessage', request_name => 'failureMessage', traits => ['Unwrapped','NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', xmlname => 'startTime', request_name => 'startTime', traits => ['Unwrapped','NameInRequest']);
  has UserAttributesForFindings => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', xmlname => 'userAttributesForFindings', request_name => 'userAttributesForFindings', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Assessment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Assessment object:

  $service_obj->Method(Att1 => { ApplicationArn => $value, ..., UserAttributesForFindings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Assessment object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationArn

=head1 DESCRIPTION

Contains information about an Inspector assessment.

This data type is used as the response element in the
DescribeAssessment action.

=head1 ATTRIBUTES

=head2 ApplicationArn => Str

  The ARN of the application that corresponds to this assessment.

=head2 AssessmentArn => Str

  The ARN of the assessment.

=head2 AssessmentName => Str

  The name of the assessment.

=head2 AssessmentState => Str

  The state of the assessment. Values can be set to I<Created>,
I<Collecting Data>, I<Stopping>, and I<Completed>.

=head2 DataCollected => Bool

  Boolean value (true or false) specifying whether the data collection
process is completed.

=head2 DurationInSeconds => Int

  The assessment duration in seconds. The default value is 3600 seconds
(one hour). The maximum value is 86400 seconds (one day).

=head2 EndTime => Str

  The assessment end time.

=head2 FailureMessage => Str

  This data type property is not currently used.

=head2 StartTime => Str

  The assessment start time.

=head2 UserAttributesForFindings => ArrayRef[L<Paws::Inspector::Attribute>]

  The user-defined attributes that are assigned to every generated
finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

