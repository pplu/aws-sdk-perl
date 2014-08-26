package Aws::RedShift::EventInfoMap {
  use Moose;
  with ('AWS::API::ResultParser');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has EventDescription => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
}
1
