package Aws::RedShift::EventCategoriesMap {
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventInfoMap]');
  has SourceType => (is => 'ro', isa => 'Str');
}
1
