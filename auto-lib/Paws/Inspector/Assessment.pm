package Paws::Inspector::Assessment;
  use Moose;
  has applicationArn => (is => 'ro', isa => 'Str');
  has assessmentArn => (is => 'ro', isa => 'Str');
  has assessmentName => (is => 'ro', isa => 'Str');
  has assessmentState => (is => 'ro', isa => 'Str');
  has dataCollected => (is => 'ro', isa => 'Bool');
  has durationInSeconds => (is => 'ro', isa => 'Int');
  has endTime => (is => 'ro', isa => 'Str');
  has failureMessage => (is => 'ro', isa => 'Str');
  has startTime => (is => 'ro', isa => 'Str');
  has userAttributesForFindings => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Assessment

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Assessment object:

  $service_obj->Method(Att1 => { applicationArn => $value, ..., userAttributesForFindings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Assessment object:

  $result = $service_obj->Method(...);
  $result->Att1->applicationArn

=head1 ATTRIBUTES

=head2 applicationArn => Str

  The ARN of the application that corresponds to this assessment.

=head2 assessmentArn => Str

  The ARN of the assessment.

=head2 assessmentName => Str

  The name of the assessment.

=head2 assessmentState => Str

  The state of the assessment. Values can be set to I<Created>,
I<Collecting Data>, I<Stopping>, and I<Completed>.

=head2 dataCollected => Bool

  Boolean value (true or false) specifying whether the data collection
process is completed.

=head2 durationInSeconds => Int

  The assessment duration in seconds. The default value is 3600 seconds
(one hour). The maximum value is 86400 seconds (one day).

=head2 endTime => Str

  The assessment end time.

=head2 failureMessage => Str

  This data type property is not currently used.

=head2 startTime => Str

  The assessment start time.

=head2 userAttributesForFindings => ArrayRef[Paws::Inspector::Attribute]

  The user-defined attributes that are assigned to every generated
finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

