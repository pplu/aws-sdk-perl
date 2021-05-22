
package Paws::SSMContacts::ListContactsResult;
  use Moose;
  has Contacts => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Contact]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListContactsResult

=head1 ATTRIBUTES


=head2 Contacts => ArrayRef[L<Paws::SSMContacts::Contact>]

A list of the contacts and escalation plans in your Incident Manager
account.


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 _request_id => Str


=cut

1;