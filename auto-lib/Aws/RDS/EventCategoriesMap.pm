package Aws::RDS::EventCategoriesMap {
  use Moose;
  with ('AWS::API::ResultParser');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
}
1
