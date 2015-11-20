package Paws::Inspector::AssessmentsFilter;
  use Moose;
  has AssessmentNamePatterns => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'assessmentNamePatterns', request_name => 'assessmentNamePatterns', traits => ['Unwrapped','NameInRequest']);
  has AssessmentStates => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'assessmentStates', request_name => 'assessmentStates', traits => ['Unwrapped','NameInRequest']);
  has DataCollected => (is => 'ro', isa => 'Bool', xmlname => 'dataCollected', request_name => 'dataCollected', traits => ['Unwrapped','NameInRequest']);
  has DurationRange => (is => 'ro', isa => 'Paws::Inspector::DurationRange', xmlname => 'durationRange', request_name => 'durationRange', traits => ['Unwrapped','NameInRequest']);
  has EndTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange', xmlname => 'endTimeRange', request_name => 'endTimeRange', traits => ['Unwrapped','NameInRequest']);
  has StartTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange', xmlname => 'startTimeRange', request_name => 'startTimeRange', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentsFilter object:

  $service_obj->Method(Att1 => { AssessmentNamePatterns => $value, ..., StartTimeRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentNamePatterns

=head1 DESCRIPTION

This data type is used as the request parameter in the ListAssessments
and ListAttachedAssessments actions.

=head1 ATTRIBUTES


=head2 AssessmentNamePatterns => ArrayRef[Str]

  For a record to match a filter, an explicit value or a string
containing a wildcard specified for this data type property must match
the value of the B<assessmentName> property of the Assessment data
type.


=head2 AssessmentStates => ArrayRef[Str]

  For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<assessmentState>
property of the Assessment data type.


=head2 DataCollected => Bool

  For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<dataCollected>
property of the Assessment data type.


=head2 DurationRange => L<Paws::Inspector::DurationRange>

  For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<durationInSeconds> property of the
Assessment data type.


=head2 EndTimeRange => L<Paws::Inspector::TimestampRange>

  For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<endTime> property of the Assessment data
type.


=head2 StartTimeRange => L<Paws::Inspector::TimestampRange>

  For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<startTime> property of the Assessment data
type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

