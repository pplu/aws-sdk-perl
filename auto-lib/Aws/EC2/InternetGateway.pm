package Aws::EC2::InternetGateway {
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InternetGatewayAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has InternetGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'internetGatewayId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}
1;
