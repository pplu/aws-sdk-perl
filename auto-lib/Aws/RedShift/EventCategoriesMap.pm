package Aws::RedShift::EventCategoriesMap {
  use Moose;
  with ('AWS::API::ResultParser');
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventInfoMap]');
  has SourceType => (is => 'ro', isa => 'Str');
}
1
