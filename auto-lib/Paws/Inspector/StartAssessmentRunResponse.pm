# Generated from json/callresult_class.tt

package Paws::Inspector::StartAssessmentRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has AssessmentRunArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssessmentRunArn' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AssessmentRunArn' => 'assessmentRunArn'
                     },
  'IsRequired' => {
                    'AssessmentRunArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::StartAssessmentRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN of the assessment run that has been started.


=head2 _request_id => Str


=cut

1;