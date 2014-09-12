package Aws::CloudSearch::IndexField {
  use Moose;
  has DateArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::DateArrayOptions');
  has DateOptions => (is => 'ro', isa => 'Aws::CloudSearch::DateOptions');
  has DoubleArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::DoubleArrayOptions');
  has DoubleOptions => (is => 'ro', isa => 'Aws::CloudSearch::DoubleOptions');
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldType => (is => 'ro', isa => 'Str', required => 1);
  has IntArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::IntArrayOptions');
  has IntOptions => (is => 'ro', isa => 'Aws::CloudSearch::IntOptions');
  has LatLonOptions => (is => 'ro', isa => 'Aws::CloudSearch::LatLonOptions');
  has LiteralArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::LiteralArrayOptions');
  has LiteralOptions => (is => 'ro', isa => 'Aws::CloudSearch::LiteralOptions');
  has TextArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::TextArrayOptions');
  has TextOptions => (is => 'ro', isa => 'Aws::CloudSearch::TextOptions');
}
1
