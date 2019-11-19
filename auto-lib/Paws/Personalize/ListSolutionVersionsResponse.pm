# Generated from json/callresult_class.tt

package Paws::Personalize::ListSolutionVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_SolutionVersionSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has SolutionVersions => (is => 'ro', isa => ArrayRef[Personalize_SolutionVersionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SolutionVersions' => {
                                       'type' => 'ArrayRef[Personalize_SolutionVersionSummary]',
                                       'class' => 'Paws::Personalize::SolutionVersionSummary'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SolutionVersions' => 'solutionVersions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSolutionVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of solution versions (if they exist).


=head2 SolutionVersions => ArrayRef[Personalize_SolutionVersionSummary]

A list of solution versions describing the version properties.


=head2 _request_id => Str


=cut

1;