
package Aws::RDS::TagListMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

}
1;