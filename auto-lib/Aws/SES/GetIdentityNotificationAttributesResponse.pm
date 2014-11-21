
package Aws::SES::GetIdentityNotificationAttributesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has NotificationAttributes => (is => 'ro', isa => 'Aws::SES::NotificationAttributes', required => 1);

}
1;