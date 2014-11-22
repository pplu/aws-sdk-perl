
package Paws::SES::GetIdentityNotificationAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NotificationAttributes => (is => 'ro', isa => 'Paws::SES::NotificationAttributes', required => 1);

}
1;