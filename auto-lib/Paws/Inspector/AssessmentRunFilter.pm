package Paws::Inspector::AssessmentRunFilter;
  use Moose;
  has CompletionTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange', request_name => 'completionTimeRange', traits => ['NameInRequest']);
  has DurationRange => (is => 'ro', isa => 'Paws::Inspector::DurationRange', request_name => 'durationRange', traits => ['NameInRequest']);
  has NamePattern => (is => 'ro', isa => 'Str', request_name => 'namePattern', traits => ['NameInRequest']);
  has RulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'rulesPackageArns', traits => ['NameInRequest']);
  has StartTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange', request_name => 'startTimeRange', traits => ['NameInRequest']);
  has StateChangeTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange', request_name => 'stateChangeTimeRange', traits => ['NameInRequest']);
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'states', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentRunFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentRunFilter object:

  $service_obj->Method(Att1 => { CompletionTimeRange => $value, ..., States => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentRunFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTimeRange

=head1 DESCRIPTION

Used as the request parameter in the ListAssessmentRuns action.

=head1 ATTRIBUTES


=head2 CompletionTimeRange => L<Paws::Inspector::TimestampRange>

  For a record to match a filter, the value that is specified for this
data type property must inclusively match any value between the
specified minimum and maximum values of the B<completedAt> property of
the AssessmentRun data type.


=head2 DurationRange => L<Paws::Inspector::DurationRange>

  For a record to match a filter, the value that is specified for this
data type property must inclusively match any value between the
specified minimum and maximum values of the B<durationInSeconds>
property of the AssessmentRun data type.


=head2 NamePattern => Str

  For a record to match a filter, an explicit value or a string
containing a wildcard that is specified for this data type property
must match the value of the B<assessmentRunName> property of the
AssessmentRun data type.


=head2 RulesPackageArns => ArrayRef[Str|Undef]

  For a record to match a filter, the value that is specified for this
data type property must be contained in the list of values of the
B<rulesPackages> property of the AssessmentRun data type.


=head2 StartTimeRange => L<Paws::Inspector::TimestampRange>

  For a record to match a filter, the value that is specified for this
data type property must inclusively match any value between the
specified minimum and maximum values of the B<startTime> property of
the AssessmentRun data type.


=head2 StateChangeTimeRange => L<Paws::Inspector::TimestampRange>

  For a record to match a filter, the value that is specified for this
data type property must match the B<stateChangedAt> property of the
AssessmentRun data type.


=head2 States => ArrayRef[Str|Undef]

  For a record to match a filter, one of the values specified for this
data type property must be the exact match of the value of the
B<assessmentRunState> property of the AssessmentRun data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

