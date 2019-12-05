
package Paws::ConnectParticipant::GetTranscriptResponse;
  use Moose;
  has InitialContactId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Transcript => (is => 'ro', isa => 'ArrayRef[Paws::ConnectParticipant::Item]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetTranscriptResponse

=head1 ATTRIBUTES


=head2 InitialContactId => Str

The initial contact ID for the contact.


=head2 NextToken => Str

The pagination token. Use the value returned previously in the next
subsequent request to retrieve the next set of results.


=head2 Transcript => ArrayRef[L<Paws::ConnectParticipant::Item>]

The list of messages in the session.


=head2 _request_id => Str


=cut

