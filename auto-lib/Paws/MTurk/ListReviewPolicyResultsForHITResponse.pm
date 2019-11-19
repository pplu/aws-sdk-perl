# Generated from json/callresult_class.tt

package Paws::MTurk::ListReviewPolicyResultsForHITResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw/MTurk_ReviewPolicy MTurk_ReviewReport/;
  has AssignmentReviewPolicy => (is => 'ro', isa => MTurk_ReviewPolicy);
  has AssignmentReviewReport => (is => 'ro', isa => MTurk_ReviewReport);
  has HITId => (is => 'ro', isa => Str);
  has HITReviewPolicy => (is => 'ro', isa => MTurk_ReviewPolicy);
  has HITReviewReport => (is => 'ro', isa => MTurk_ReviewReport);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'HITReviewPolicy' => {
                                      'type' => 'MTurk_ReviewPolicy',
                                      'class' => 'Paws::MTurk::ReviewPolicy'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AssignmentReviewPolicy' => {
                                             'type' => 'MTurk_ReviewPolicy',
                                             'class' => 'Paws::MTurk::ReviewPolicy'
                                           },
               'AssignmentReviewReport' => {
                                             'type' => 'MTurk_ReviewReport',
                                             'class' => 'Paws::MTurk::ReviewReport'
                                           },
               'HITReviewReport' => {
                                      'class' => 'Paws::MTurk::ReviewReport',
                                      'type' => 'MTurk_ReviewReport'
                                    },
               'HITId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListReviewPolicyResultsForHITResponse

=head1 ATTRIBUTES


=head2 AssignmentReviewPolicy => MTurk_ReviewPolicy

The name of the Assignment-level Review Policy. This contains only the
PolicyName element.


=head2 AssignmentReviewReport => MTurk_ReviewReport

Contains both ReviewResult and ReviewAction elements for an Assignment.


=head2 HITId => Str

The HITId of the HIT for which results have been returned.


=head2 HITReviewPolicy => MTurk_ReviewPolicy

The name of the HIT-level Review Policy. This contains only the
PolicyName element.


=head2 HITReviewReport => MTurk_ReviewReport

Contains both ReviewResult and ReviewAction elements for a particular
HIT.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;