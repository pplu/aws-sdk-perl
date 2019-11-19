# Generated from json/callargs_class.tt

package Paws::Inspector::CreateAssessmentTemplate;
  use Moo;
  use Types::Standard qw/Str Int Undef ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_Attribute/;
  has AssessmentTargetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AssessmentTemplateName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DurationInSeconds => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has RulesPackageArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has UserAttributesForFindings => (is => 'ro', isa => ArrayRef[Inspector_Attribute], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateAssessmentTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Inspector::CreateAssessmentTemplateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DurationInSeconds' => {
                                        'type' => 'Int'
                                      },
               'AssessmentTargetArn' => {
                                          'type' => 'Str'
                                        },
               'UserAttributesForFindings' => {
                                                'type' => 'ArrayRef[Inspector_Attribute]',
                                                'class' => 'Paws::Inspector::Attribute'
                                              },
               'RulesPackageArns' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'AssessmentTemplateName' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'RulesPackageArns' => 'rulesPackageArns',
                       'AssessmentTemplateName' => 'assessmentTemplateName',
                       'AssessmentTargetArn' => 'assessmentTargetArn',
                       'DurationInSeconds' => 'durationInSeconds',
                       'UserAttributesForFindings' => 'userAttributesForFindings'
                     },
  'IsRequired' => {
                    'RulesPackageArns' => 1,
                    'AssessmentTemplateName' => 1,
                    'AssessmentTargetArn' => 1,
                    'DurationInSeconds' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTemplate - Arguments for method CreateAssessmentTemplate on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssessmentTemplate on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method CreateAssessmentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssessmentTemplate.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Create assessment template
    # Creates an assessment template for the assessment target that is specified
    # by the ARN of the assessment target.
    my $CreateAssessmentTemplateResponse = $inspector->CreateAssessmentTemplate(
      'AssessmentTargetArn' =>
        'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX',
      'AssessmentTemplateName' => 'ExampleAssessmentTemplate',
      'DurationInSeconds'      => 180,
      'RulesPackageArns' =>
        ['arn:aws:inspector:us-west-2:758058086616:rulespackage/0-11B9DBXp'],
      'UserAttributesForFindings' => [

        {
          'Key'   => 'Example',
          'Value' => 'example'
        }
      ]
    );

    # Results:
    my $assessmentTemplateArn =
      $CreateAssessmentTemplateResponse->assessmentTemplateArn;

    # Returns a L<Paws::Inspector::CreateAssessmentTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/CreateAssessmentTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN that specifies the assessment target for which you want to
create the assessment template.



=head2 B<REQUIRED> AssessmentTemplateName => Str

The user-defined name that identifies the assessment template that you
want to create. You can create several assessment templates for an
assessment target. The names of the assessment templates that
correspond to a particular assessment target must be unique.



=head2 B<REQUIRED> DurationInSeconds => Int

The duration of the assessment run in seconds.



=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str|Undef]

The ARNs that specify the rules packages that you want to attach to the
assessment template.



=head2 UserAttributesForFindings => ArrayRef[Inspector_Attribute]

The user-defined attributes that are assigned to every finding that is
generated by the assessment run that uses this assessment template. An
attribute is a key and value pair (an Attribute object). Within an
assessment template, each key must be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssessmentTemplate in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

