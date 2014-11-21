
package Aws::SNS::PublishResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str');

}
1;