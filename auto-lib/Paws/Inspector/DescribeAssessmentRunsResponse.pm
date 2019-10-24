# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeAssessmentRunsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_FailedItems Inspector_AssessmentRun/;
  has AssessmentRuns => (is => 'ro', isa => ArrayRef[Inspector_AssessmentRun], required => 1);
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'class' => 'Paws::Inspector::FailedItems',
                                  'type' => 'Inspector_FailedItems'
                                },
               'AssessmentRuns' => {
                                     'class' => 'Paws::Inspector::AssessmentRun',
                                     'type' => 'ArrayRef[Inspector_AssessmentRun]'
                                   }
             },
  'NameInRequest' => {
                       'FailedItems' => 'failedItems',
                       'AssessmentRuns' => 'assessmentRuns'
                     },
  'IsRequired' => {
                    'FailedItems' => 1,
                    'AssessmentRuns' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRuns => ArrayRef[Inspector_AssessmentRun]

Information about the assessment run.


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Assessment run details that cannot be described. An error code is
provided for each failed item.


=head2 _request_id => Str


=cut

1;