package Aws::SES::Body {
  use Moose;
  has Html => (is => 'ro', isa => 'Aws::SES::Content');
  has Text => (is => 'ro', isa => 'Aws::SES::Content');
}
1
