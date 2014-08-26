package Aws::RedShift::AccountWithRestoreAccess {
  use Moose;
  with ('AWS::API::ResultParser');
  has AccountId => (is => 'ro', isa => 'Str');
}
1
