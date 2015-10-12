package Paws::Inspector::AssessmentsFilter;
  use Moose;
  has assessmentNamePatterns => (is => 'ro', isa => 'ArrayRef[Str]');
  has assessmentStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has dataCollected => (is => 'ro', isa => 'Bool');
  has durationRange => (is => 'ro', isa => 'Paws::Inspector::DurationRange');
  has endTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
  has startTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentsFilter

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentsFilter object:

  $service_obj->Method(Att1 => { assessmentNamePatterns => $value, ..., startTimeRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->assessmentNamePatterns

=head1 ATTRIBUTES

=head2 assessmentNamePatterns => ArrayRef[Str]

  For a record to match a filter, an explicit value or a string
containing a wildcard specified for this data type property must match
the value of the B<assessmentName> property of the Assessment data
type.

=head2 assessmentStates => ArrayRef[Str]

  For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<assessmentState>
property of the Assessment data type.

=head2 dataCollected => Bool

  For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<dataCollected>
property of the Assessment data type.

=head2 durationRange => Paws::Inspector::DurationRange

  For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<durationInSeconds> property of the
Assessment data type.

=head2 endTimeRange => Paws::Inspector::TimestampRange

  For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<endTime> property of the Assessment data
type.

=head2 startTimeRange => Paws::Inspector::TimestampRange

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

