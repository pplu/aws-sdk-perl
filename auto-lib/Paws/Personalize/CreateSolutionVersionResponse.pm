# Generated from json/callresult_class.tt

package Paws::Personalize::CreateSolutionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SolutionVersionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SolutionVersionArn' => 'solutionVersionArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSolutionVersionResponse

=head1 ATTRIBUTES


=head2 SolutionVersionArn => Str

The ARN of the new solution version.


=head2 _request_id => Str


=cut

1;