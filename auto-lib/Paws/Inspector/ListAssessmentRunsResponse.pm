# Generated from json/callresult_class.tt

package Paws::Inspector::ListAssessmentRunsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Inspector::Types qw//;
  has AssessmentRunArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssessmentRunArns' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AssessmentRunArns' => 'assessmentRunArns',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'AssessmentRunArns' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAssessmentRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArns => ArrayRef[Str|Undef]

A list of ARNs that specifies the assessment runs that are returned by
the action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;