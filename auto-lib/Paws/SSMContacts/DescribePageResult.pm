
package Paws::SSMContacts::DescribePageResult;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryTime => (is => 'ro', isa => 'Str');
  has EngagementArn => (is => 'ro', isa => 'Str', required => 1);
  has IncidentId => (is => 'ro', isa => 'Str');
  has PageArn => (is => 'ro', isa => 'Str', required => 1);
  has PublicContent => (is => 'ro', isa => 'Str');
  has PublicSubject => (is => 'ro', isa => 'Str');
  has ReadTime => (is => 'ro', isa => 'Str');
  has Sender => (is => 'ro', isa => 'Str', required => 1);
  has SentTime => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DescribePageResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact that was engaged.


=head2 B<REQUIRED> Content => Str

The secure content of the message that was sent to the contact. Use
this field for engagements to C<VOICE> and C<EMAIL>.


=head2 DeliveryTime => Str

The time that the contact channel received the engagement.


=head2 B<REQUIRED> EngagementArn => Str

The ARN of the engagement that engaged the contact channel.


=head2 IncidentId => Str

The ARN of the incident that engaged the contact channel.


=head2 B<REQUIRED> PageArn => Str

The Amazon Resource Name (ARN) of the engagement to a contact channel.


=head2 PublicContent => Str

The insecure content of the message that was sent to the contact. Use
this field for engagements to C<SMS>.


=head2 PublicSubject => Str

The insecure subject of the message that was sent to the contact. Use
this field for engagements to C<SMS>.


=head2 ReadTime => Str

The time that the contact channel acknowledged the engagement.


=head2 B<REQUIRED> Sender => Str

The user that started the engagement.


=head2 SentTime => Str

The time the engagement was sent to the contact channel.


=head2 B<REQUIRED> Subject => Str

The secure subject of the message that was sent to the contact. Use
this field for engagements to C<VOICE> and C<EMAIL>.


=head2 _request_id => Str


=cut

1;