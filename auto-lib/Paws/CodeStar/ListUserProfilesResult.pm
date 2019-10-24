# Generated from json/callresult_class.tt

package Paws::CodeStar::ListUserProfilesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStar::Types qw/CodeStar_UserProfileSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has UserProfiles => (is => 'ro', isa => ArrayRef[CodeStar_UserProfileSummary], required => 1);

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
               'UserProfiles' => {
                                   'class' => 'Paws::CodeStar::UserProfileSummary',
                                   'type' => 'ArrayRef[CodeStar_UserProfileSummary]'
                                 }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'UserProfiles' => 'userProfiles'
                     },
  'IsRequired' => {
                    'UserProfiles' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListUserProfilesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 B<REQUIRED> UserProfiles => ArrayRef[CodeStar_UserProfileSummary]

All the user profiles configured in AWS CodeStar for an AWS account.


=head2 _request_id => Str


=cut

1;