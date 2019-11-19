# Generated from json/callresult_class.tt

package Paws::Personalize::CreateSolutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SolutionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SolutionArn' => 'solutionArn'
                     },
  'types' => {
               'SolutionArn' => {
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

Paws::Personalize::CreateSolutionResponse

=head1 ATTRIBUTES


=head2 SolutionArn => Str

The ARN of the solution.


=head2 _request_id => Str


=cut

1;