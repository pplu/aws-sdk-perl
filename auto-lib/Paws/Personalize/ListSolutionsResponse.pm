# Generated from json/callresult_class.tt

package Paws::Personalize::ListSolutionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_SolutionSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Solutions => (is => 'ro', isa => ArrayRef[Personalize_SolutionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Solutions' => 'solutions',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Solutions' => {
                                'type' => 'ArrayRef[Personalize_SolutionSummary]',
                                'class' => 'Paws::Personalize::SolutionSummary'
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

Paws::Personalize::ListSolutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of solutions (if they exist).


=head2 Solutions => ArrayRef[Personalize_SolutionSummary]

A list of the current solutions.


=head2 _request_id => Str


=cut

1;