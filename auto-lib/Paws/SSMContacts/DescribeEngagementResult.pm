
package Paws::SSMContacts::DescribeEngagementResult;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has EngagementArn => (is => 'ro', isa => 'Str', required => 1);
  has IncidentId => (is => 'ro', isa => 'Str');
  has PublicContent => (is => 'ro', isa => 'Str');
  has PublicSubject => (is => 'ro', isa => 'Str');
  has Sender => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has StopTime => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DescribeEngagementResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The ARN of the escalation plan or contacts involved in the engagement.


=head2 B<REQUIRED> Content => Str

The secure content of the message that was sent to the contact. Use
this field for engagements to C<VOICE> and C<EMAIL>.


=head2 B<REQUIRED> EngagementArn => Str

The ARN of the engagement.


=head2 IncidentId => Str

The ARN of the incident in which the engagement occurred.


=head2 PublicContent => Str

The insecure content of the message that was sent to the contact. Use
this field for engagements to C<SMS>.


=head2 PublicSubject => Str

The insecure subject of the message that was sent to the contact. Use
this field for engagements to C<SMS>.


=head2 B<REQUIRED> Sender => Str

The user that started the engagement.


=head2 StartTime => Str

The time that the engagement started.


=head2 StopTime => Str

The time that the engagement ended.


=head2 B<REQUIRED> Subject => Str

The secure subject of the message that was sent to the contact. Use
this field for engagements to C<VOICE> and C<EMAIL>.


=head2 _request_id => Str


=cut

1;