# Generated from json/callresult_class.tt

package Paws::Config::PutEvaluationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_Evaluation/;
  has FailedEvaluations => (is => 'ro', isa => ArrayRef[Config_Evaluation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedEvaluations' => {
                                        'type' => 'ArrayRef[Config_Evaluation]',
                                        'class' => 'Paws::Config::Evaluation'
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

Paws::Config::PutEvaluationsResponse

=head1 ATTRIBUTES


=head2 FailedEvaluations => ArrayRef[Config_Evaluation]

Requests that failed because of a client or server error.


=head2 _request_id => Str


=cut

1;