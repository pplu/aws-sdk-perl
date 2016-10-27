
package Paws::CognitoIdp::ListUserImportJobsResponse;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserImportJobType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserImportJobsResponse

=head1 ATTRIBUTES


=head2 PaginationToken => Str

An identifier that can be used to return the next set of user import
jobs in the list.



=head2 UserImportJobs => ArrayRef[L<Paws::CognitoIdp::UserImportJobType>]

The user import jobs.




=cut

1;