
package Paws::SES::GetIdentityNotificationAttributesResponse;
  use Moose;
  has NotificationAttributes => (is => 'ro', isa => 'Paws::SES::NotificationAttributes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityNotificationAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationAttributes => L<Paws::SES::NotificationAttributes>

A map of Identity to IdentityNotificationAttributes.


=head2 _request_id => Str


=cut

