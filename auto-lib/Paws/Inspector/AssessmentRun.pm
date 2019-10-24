# Generated from default/object.tt
package Paws::Inspector::AssessmentRun;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef Undef/;
  use Paws::Inspector::Types qw/Inspector_Attribute Inspector_AssessmentRunFindingCounts Inspector_AssessmentRunStateChange Inspector_AssessmentRunNotification/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has AssessmentTemplateArn => (is => 'ro', isa => Str, required => 1);
  has CompletedAt => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has DataCollected => (is => 'ro', isa => Bool, required => 1);
  has DurationInSeconds => (is => 'ro', isa => Int, required => 1);
  has FindingCounts => (is => 'ro', isa => Inspector_AssessmentRunFindingCounts, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Notifications => (is => 'ro', isa => ArrayRef[Inspector_AssessmentRunNotification], required => 1);
  has RulesPackageArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has StartedAt => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str, required => 1);
  has StateChangedAt => (is => 'ro', isa => Str, required => 1);
  has StateChanges => (is => 'ro', isa => ArrayRef[Inspector_AssessmentRunStateChange], required => 1);
  has UserAttributesForFindings => (is => 'ro', isa => ArrayRef[Inspector_Attribute], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DurationInSeconds' => {
                                        'type' => 'Int'
                                      },
               'StateChangedAt' => {
                                     'type' => 'Str'
                                   },
               'StartedAt' => {
                                'type' => 'Str'
                              },
               'CompletedAt' => {
                                  'type' => 'Str'
                                },
               'RulesPackageArns' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'State' => {
                            'type' => 'Str'
                          },
               'AssessmentTemplateArn' => {
                                            'type' => 'Str'
                                          },
               'UserAttributesForFindings' => {
                                                'class' => 'Paws::Inspector::Attribute',
                                                'type' => 'ArrayRef[Inspector_Attribute]'
                                              },
               'FindingCounts' => {
                                    'class' => 'Paws::Inspector::AssessmentRunFindingCounts',
                                    'type' => 'Inspector_AssessmentRunFindingCounts'
                                  },
               'StateChanges' => {
                                   'class' => 'Paws::Inspector::AssessmentRunStateChange',
                                   'type' => 'ArrayRef[Inspector_AssessmentRunStateChange]'
                                 },
               'Notifications' => {
                                    'class' => 'Paws::Inspector::AssessmentRunNotification',
                                    'type' => 'ArrayRef[Inspector_AssessmentRunNotification]'
                                  },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'DataCollected' => {
                                    'type' => 'Bool'
                                  },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'DurationInSeconds' => 'durationInSeconds',
                       'StateChangedAt' => 'stateChangedAt',
                       'StartedAt' => 'startedAt',
                       'CompletedAt' => 'completedAt',
                       'RulesPackageArns' => 'rulesPackageArns',
                       'State' => 'state',
                       'AssessmentTemplateArn' => 'assessmentTemplateArn',
                       'UserAttributesForFindings' => 'userAttributesForFindings',
                       'FindingCounts' => 'findingCounts',
                       'StateChanges' => 'stateChanges',
                       'Notifications' => 'notifications',
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn',
                       'DataCollected' => 'dataCollected',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'DurationInSeconds' => 1,
                    'StateChangedAt' => 1,
                    'RulesPackageArns' => 1,
                    'State' => 1,
                    'AssessmentTemplateArn' => 1,
                    'UserAttributesForFindings' => 1,
                    'FindingCounts' => 1,
                    'StateChanges' => 1,
                    'CreatedAt' => 1,
                    'Notifications' => 1,
                    'Arn' => 1,
                    'DataCollected' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentRun object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserAttributesForFindings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentRun object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A snapshot of an Amazon Inspector assessment run that contains the
findings of the assessment run .

Used as the response element in the DescribeAssessmentRuns action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN of the assessment run.


=head2 B<REQUIRED> AssessmentTemplateArn => Str

  The ARN of the assessment template that is associated with the
assessment run.


=head2 CompletedAt => Str

  The assessment run completion time that corresponds to the rules
packages evaluation completion time or failure.


=head2 B<REQUIRED> CreatedAt => Str

  The time when StartAssessmentRun was called.


=head2 B<REQUIRED> DataCollected => Bool

  A Boolean value (true or false) that specifies whether the process of
collecting data from the agents is completed.


=head2 B<REQUIRED> DurationInSeconds => Int

  The duration of the assessment run.


=head2 B<REQUIRED> FindingCounts => Inspector_AssessmentRunFindingCounts

  Provides a total count of generated findings per severity.


=head2 B<REQUIRED> Name => Str

  The auto-generated name for the assessment run.


=head2 B<REQUIRED> Notifications => ArrayRef[Inspector_AssessmentRunNotification]

  A list of notifications for the event subscriptions. A notification
about a particular generated finding is added to this list only once.


=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str|Undef]

  The rules packages selected for the assessment run.


=head2 StartedAt => Str

  The time when StartAssessmentRun was called.


=head2 B<REQUIRED> State => Str

  The state of the assessment run.


=head2 B<REQUIRED> StateChangedAt => Str

  The last time when the assessment run's state changed.


=head2 B<REQUIRED> StateChanges => ArrayRef[Inspector_AssessmentRunStateChange]

  A list of the assessment run state changes.


=head2 B<REQUIRED> UserAttributesForFindings => ArrayRef[Inspector_Attribute]

  The user-defined attributes that are assigned to every generated
finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

