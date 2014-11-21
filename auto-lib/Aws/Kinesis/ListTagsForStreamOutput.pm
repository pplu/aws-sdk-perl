
package Aws::Kinesis::ListTagsForStreamOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has HasMoreTags => (is => 'ro', isa => 'Bool', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Tag]', required => 1);

}
1;