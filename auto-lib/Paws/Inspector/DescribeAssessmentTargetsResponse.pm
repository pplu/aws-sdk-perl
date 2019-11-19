# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeAssessmentTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_FailedItems Inspector_AssessmentTarget/;
  has AssessmentTargets => (is => 'ro', isa => ArrayRef[Inspector_AssessmentTarget], required => 1);
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AssessmentTargets' => 'assessmentTargets',
                       'FailedItems' => 'failedItems'
                     },
  'IsRequired' => {
                    'FailedItems' => 1,
                    'AssessmentTargets' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'type' => 'Inspector_FailedItems',
                                  'class' => 'Paws::Inspector::FailedItems'
                                },
               'AssessmentTargets' => {
                                        'type' => 'ArrayRef[Inspector_AssessmentTarget]',
                                        'class' => 'Paws::Inspector::AssessmentTarget'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTargetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargets => ArrayRef[Inspector_AssessmentTarget]

Information about the assessment targets.


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Assessment target details that cannot be described. An error code is
provided for each failed item.


=head2 _request_id => Str


=cut

1;