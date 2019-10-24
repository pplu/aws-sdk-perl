# Generated from json/callresult_class.tt

package Paws::Inspector::ListAssessmentTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Inspector::Types qw//;
  has AssessmentTargetArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AssessmentTargetArns' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'AssessmentTargetArns' => 'assessmentTargetArns'
                     },
  'IsRequired' => {
                    'AssessmentTargetArns' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAssessmentTargetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArns => ArrayRef[Str|Undef]

A list of ARNs that specifies the assessment targets that are returned
by the action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;