# Generated from json/callresult_class.tt

package Paws::Inspector::CreateAssessmentTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has AssessmentTemplateArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AssessmentTemplateArn' => 1
                  },
  'NameInRequest' => {
                       'AssessmentTemplateArn' => 'assessmentTemplateArn'
                     },
  'types' => {
               'AssessmentTemplateArn' => {
                                            'type' => 'Str'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN that specifies the assessment template that is created.


=head2 _request_id => Str


=cut

1;