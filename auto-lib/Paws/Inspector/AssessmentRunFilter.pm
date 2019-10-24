# Generated from default/object.tt
package Paws::Inspector::AssessmentRunFilter;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Inspector::Types qw/Inspector_DurationRange Inspector_TimestampRange/;
  has CompletionTimeRange => (is => 'ro', isa => Inspector_TimestampRange);
  has DurationRange => (is => 'ro', isa => Inspector_DurationRange);
  has NamePattern => (is => 'ro', isa => Str);
  has RulesPackageArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has StartTimeRange => (is => 'ro', isa => Inspector_TimestampRange);
  has StateChangeTimeRange => (is => 'ro', isa => Inspector_TimestampRange);
  has States => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CompletionTimeRange' => {
                                          'class' => 'Paws::Inspector::TimestampRange',
                                          'type' => 'Inspector_TimestampRange'
                                        },
               'StateChangeTimeRange' => {
                                           'class' => 'Paws::Inspector::TimestampRange',
                                           'type' => 'Inspector_TimestampRange'
                                         },
               'States' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'NamePattern' => {
                                  'type' => 'Str'
                                },
               'RulesPackageArns' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'StartTimeRange' => {
                                     'class' => 'Paws::Inspector::TimestampRange',
                                     'type' => 'Inspector_TimestampRange'
                                   },
               'DurationRange' => {
                                    'class' => 'Paws::Inspector::DurationRange',
                                    'type' => 'Inspector_DurationRange'
                                  }
             },
  'NameInRequest' => {
                       'CompletionTimeRange' => 'completionTimeRange',
                       'StateChangeTimeRange' => 'stateChangeTimeRange',
                       'States' => 'states',
                       'NamePattern' => 'namePattern',
                       'RulesPackageArns' => 'rulesPackageArns',
                       'StartTimeRange' => 'startTimeRange',
                       'DurationRange' => 'durationRange'
                     }
}
;
    return $Params_map;
  }


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


=head2 CompletionTimeRange => Inspector_TimestampRange

  For a record to match a filter, the value that is specified for this
data type property must inclusively match any value between the
specified minimum and maximum values of the B<completedAt> property of
the AssessmentRun data type.


=head2 DurationRange => Inspector_DurationRange

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


=head2 StartTimeRange => Inspector_TimestampRange

  For a record to match a filter, the value that is specified for this
data type property must inclusively match any value between the
specified minimum and maximum values of the B<startTime> property of
the AssessmentRun data type.


=head2 StateChangeTimeRange => Inspector_TimestampRange

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

