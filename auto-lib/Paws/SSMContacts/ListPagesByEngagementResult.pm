
package Paws::SSMContacts::ListPagesByEngagementResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Pages => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Page]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPagesByEngagementResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 B<REQUIRED> Pages => ArrayRef[L<Paws::SSMContacts::Page>]

The list of engagements to contact channels.


=head2 _request_id => Str


=cut

1;