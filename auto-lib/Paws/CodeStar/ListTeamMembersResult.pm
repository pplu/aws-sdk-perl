# Generated from json/callresult_class.tt

package Paws::CodeStar::ListTeamMembersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStar::Types qw/CodeStar_TeamMember/;
  has NextToken => (is => 'ro', isa => Str);
  has TeamMembers => (is => 'ro', isa => ArrayRef[CodeStar_TeamMember], required => 1);

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
               'TeamMembers' => {
                                  'class' => 'Paws::CodeStar::TeamMember',
                                  'type' => 'ArrayRef[CodeStar_TeamMember]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TeamMembers' => 'teamMembers'
                     },
  'IsRequired' => {
                    'TeamMembers' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListTeamMembersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 B<REQUIRED> TeamMembers => ArrayRef[CodeStar_TeamMember]

A list of team member objects for the project.


=head2 _request_id => Str


=cut

1;