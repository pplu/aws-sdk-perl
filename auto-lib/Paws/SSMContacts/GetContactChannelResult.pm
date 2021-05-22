
package Paws::SSMContacts::GetContactChannelResult;
  use Moose;
  has ActivationStatus => (is => 'ro', isa => 'Str');
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);
  has ContactChannelArn => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryAddress => (is => 'ro', isa => 'Paws::SSMContacts::ContactChannelAddress', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetContactChannelResult

=head1 ATTRIBUTES


=head2 ActivationStatus => Str

A Boolean value indicating if the contact channel has been activated or
not.

Valid values are: C<"ACTIVATED">, C<"NOT_ACTIVATED">
=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact that the channel belongs to.


=head2 B<REQUIRED> ContactChannelArn => Str

The ARN of the contact channel.


=head2 B<REQUIRED> DeliveryAddress => L<Paws::SSMContacts::ContactChannelAddress>

The details that Incident Manager uses when trying to engage the
contact channel.


=head2 B<REQUIRED> Name => Str

The name of the contact channel


=head2 B<REQUIRED> Type => Str

The type of contact channel. The type is C<SMS>, C<VOICE>, or C<EMAIL>.

Valid values are: C<"SMS">, C<"VOICE">, C<"EMAIL">
=head2 _request_id => Str


=cut

1;