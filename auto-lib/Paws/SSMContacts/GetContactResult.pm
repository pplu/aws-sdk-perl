
package Paws::SSMContacts::GetContactResult;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', required => 1);
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has Plan => (is => 'ro', isa => 'Paws::SSMContacts::Plan', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetContactResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The alias of the contact or escalation plan. The alias is unique and
identifiable.


=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact or escalation plan.


=head2 DisplayName => Str

The full name of the contact or escalation plan.


=head2 B<REQUIRED> Plan => L<Paws::SSMContacts::Plan>

Details about the specific timing or stages and targets of the
escalation plan or engagement plan.


=head2 B<REQUIRED> Type => Str

The type of contact, either C<PERSONAL> or C<ESCALATION>.

Valid values are: C<"PERSONAL">, C<"ESCALATION">
=head2 _request_id => Str


=cut

1;