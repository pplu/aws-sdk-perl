package Paws::SES::ReceiptIpFilter;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);
1;
