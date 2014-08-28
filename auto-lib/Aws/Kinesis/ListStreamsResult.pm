
package Aws::Kinesis::ListStreamsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HasMoreStreams => (is => 'ro', isa => 'Bool', required => 1);
  has StreamNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;
