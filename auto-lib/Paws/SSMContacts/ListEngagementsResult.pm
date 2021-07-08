
package Paws::SSMContacts::ListEngagementsResult;
  use Moose;
  has Engagements => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Engagement]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListEngagementsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Engagements => ArrayRef[L<Paws::SSMContacts::Engagement>]

A list of each engagement that occurred during the specified time range
of an incident.


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 _request_id => Str


=cut

1;