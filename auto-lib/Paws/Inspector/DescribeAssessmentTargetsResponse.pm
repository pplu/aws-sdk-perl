# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeAssessmentTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_AssessmentTarget Inspector_FailedItems/;
  has AssessmentTargets => (is => 'ro', isa => ArrayRef[Inspector_AssessmentTarget], required => 1);
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssessmentTargets' => {
                                        'class' => 'Paws::Inspector::AssessmentTarget',
                                        'type' => 'ArrayRef[Inspector_AssessmentTarget]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'class' => 'Paws::Inspector::FailedItems',
                                  'type' => 'Inspector_FailedItems'
                                }
             },
  'NameInRequest' => {
                       'AssessmentTargets' => 'assessmentTargets',
                       'FailedItems' => 'failedItems'
                     },
  'IsRequired' => {
                    'AssessmentTargets' => 1,
                    'FailedItems' => 1
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