package Aws::EC2::RecurringCharge {
  use Moose;
  has Amount => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'amount');
  has Frequency => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'frequency');
}
1;
