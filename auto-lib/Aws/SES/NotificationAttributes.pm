package Aws::SES::NotificationAttributes {
  use Moose;
  with 'AWS::API::StrToObjMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Aws::SES::IdentityNotificationAttributes]');
}
1
