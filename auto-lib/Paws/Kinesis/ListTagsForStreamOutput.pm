
package Paws::Kinesis::ListTagsForStreamOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has HasMoreTags => (is => 'ro', isa => 'Bool', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::Tag]', required => 1);

}
1;