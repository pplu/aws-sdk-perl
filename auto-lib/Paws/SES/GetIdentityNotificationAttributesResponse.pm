
package Paws::SES::GetIdentityNotificationAttributesResponse;
  use Moose;
  has NotificationAttributes => (is => 'ro', isa => 'HashRef[Paws::SES::IdentityNotificationAttributes]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityNotificationAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationAttributes => HashRef[L<Paws::SES::IdentityNotificationAttributes>]

A map of Identity to IdentityNotificationAttributes.




=cut

