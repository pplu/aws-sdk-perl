# Generated from default/object.tt
package Paws::Inspector::AssessmentTemplate;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::Inspector::Types qw/Inspector_Attribute/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has AssessmentRunCount => (is => 'ro', isa => Int, required => 1);
  has AssessmentTargetArn => (is => 'ro', isa => Str, required => 1);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has DurationInSeconds => (is => 'ro', isa => Int, required => 1);
  has LastAssessmentRunArn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RulesPackageArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has UserAttributesForFindings => (is => 'ro', isa => ArrayRef[Inspector_Attribute], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastAssessmentRunArn' => {
                                           'type' => 'Str'
                                         },
               'DurationInSeconds' => {
                                        'type' => 'Int'
                                      },
               'AssessmentTargetArn' => {
                                          'type' => 'Str'
                                        },
               'RulesPackageArns' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'UserAttributesForFindings' => {
                                                'class' => 'Paws::Inspector::Attribute',
                                                'type' => 'ArrayRef[Inspector_Attribute]'
                                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'AssessmentRunCount' => {
                                         'type' => 'Int'
                                       },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'LastAssessmentRunArn' => 'lastAssessmentRunArn',
                       'DurationInSeconds' => 'durationInSeconds',
                       'AssessmentTargetArn' => 'assessmentTargetArn',
                       'RulesPackageArns' => 'rulesPackageArns',
                       'UserAttributesForFindings' => 'userAttributesForFindings',
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn',
                       'AssessmentRunCount' => 'assessmentRunCount',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'DurationInSeconds' => 1,
                    'AssessmentTargetArn' => 1,
                    'RulesPackageArns' => 1,
                    'UserAttributesForFindings' => 1,
                    'CreatedAt' => 1,
                    'Arn' => 1,
                    'AssessmentRunCount' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentTemplate object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserAttributesForFindings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an Amazon Inspector assessment template.
This data type is used as the response element in the
DescribeAssessmentTemplates action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN of the assessment template.


=head2 B<REQUIRED> AssessmentRunCount => Int

  The number of existing assessment runs associated with this assessment
template. This value can be zero or a positive integer.


=head2 B<REQUIRED> AssessmentTargetArn => Str

  The ARN of the assessment target that corresponds to this assessment
template.


=head2 B<REQUIRED> CreatedAt => Str

  The time at which the assessment template is created.


=head2 B<REQUIRED> DurationInSeconds => Int

  The duration in seconds specified for this assessment template. The
default value is 3600 seconds (one hour). The maximum value is 86400
seconds (one day).


=head2 LastAssessmentRunArn => Str

  The Amazon Resource Name (ARN) of the most recent assessment run
associated with this assessment template. This value exists only when
the value of assessmentRunCount is greaterpa than zero.


=head2 B<REQUIRED> Name => Str

  The name of the assessment template.


=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str|Undef]

  The rules packages that are specified for this assessment template.


=head2 B<REQUIRED> UserAttributesForFindings => ArrayRef[Inspector_Attribute]

  The user-defined attributes that are assigned to every generated
finding from the assessment run that uses this assessment template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

