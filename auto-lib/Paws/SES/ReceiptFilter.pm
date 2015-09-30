package Paws::SES::ReceiptFilter;
  use Moose;
  has IpFilter => (is => 'ro', isa => 'Paws::SES::ReceiptIpFilter', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;
