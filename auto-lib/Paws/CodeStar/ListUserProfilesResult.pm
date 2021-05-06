
package Paws::CodeStar::ListUserProfilesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Paws::CodeStar::UserProfileSummary]', traits => ['NameInRequest'], request_name => 'userProfiles' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListUserProfilesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 B<REQUIRED> UserProfiles => ArrayRef[L<Paws::CodeStar::UserProfileSummary>]

All the user profiles configured in AWS CodeStar for an AWS account.


=head2 _request_id => Str


=cut

1;