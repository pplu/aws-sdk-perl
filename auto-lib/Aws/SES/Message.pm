package Aws::SES::Message {
  use Moose;
  has Body => (is => 'ro', isa => 'Aws::SES::Body', required => 1);
  has Subject => (is => 'ro', isa => 'Aws::SES::Content', required => 1);
}
1;
