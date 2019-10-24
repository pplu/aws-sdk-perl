# Generated from json/callresult_class.tt

package Paws::Inspector::CreateAssessmentTargetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has AssessmentTargetArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssessmentTargetArn' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AssessmentTargetArn' => 'assessmentTargetArn'
                     },
  'IsRequired' => {
                    'AssessmentTargetArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN that specifies the assessment target that is created.


=head2 _request_id => Str


=cut

1;