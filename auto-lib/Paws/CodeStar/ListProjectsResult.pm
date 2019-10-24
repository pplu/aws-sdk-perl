# Generated from json/callresult_class.tt

package Paws::CodeStar::ListProjectsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStar::Types qw/CodeStar_ProjectSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Projects => (is => 'ro', isa => ArrayRef[CodeStar_ProjectSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Projects' => {
                               'class' => 'Paws::CodeStar::ProjectSummary',
                               'type' => 'ArrayRef[CodeStar_ProjectSummary]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Projects' => 'projects',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'Projects' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListProjectsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 B<REQUIRED> Projects => ArrayRef[CodeStar_ProjectSummary]

A list of projects.


=head2 _request_id => Str


=cut

1;