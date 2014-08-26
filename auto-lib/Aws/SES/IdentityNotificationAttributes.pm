package Aws::SES::IdentityNotificationAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has BounceTopic => (is => 'ro', isa => 'Str');
  has ComplaintTopic => (is => 'ro', isa => 'Str');
  has DeliveryTopic => (is => 'ro', isa => 'Str');
  has ForwardingEnabled => (is => 'ro', isa => 'Bool', required => 1);
}
1
