# Generated from json/callresult_class.tt

package Paws::Personalize::CreateSolutionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SolutionVersionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SolutionVersionArn' => 'solutionVersionArn'
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