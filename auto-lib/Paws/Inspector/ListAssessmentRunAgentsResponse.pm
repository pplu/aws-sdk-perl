# Generated from json/callresult_class.tt

package Paws::Inspector::ListAssessmentRunAgentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_AssessmentRunAgent/;
  has AssessmentRunAgents => (is => 'ro', isa => ArrayRef[Inspector_AssessmentRunAgent], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AssessmentRunAgents' => 1
                  },
  'NameInRequest' => {
                       'AssessmentRunAgents' => 'assessmentRunAgents',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'AssessmentRunAgents' => {
                                          'class' => 'Paws::Inspector::AssessmentRunAgent',
                                          'type' => 'ArrayRef[Inspector_AssessmentRunAgent]'
                                        },
               'NextToken' => {
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

Paws::Inspector::ListAssessmentRunAgentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunAgents => ArrayRef[Inspector_AssessmentRunAgent]

A list of ARNs that specifies the agents returned by the action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;