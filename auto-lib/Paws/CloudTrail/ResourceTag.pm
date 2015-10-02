package Paws::CloudTrail::ResourceTag;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');
1;
