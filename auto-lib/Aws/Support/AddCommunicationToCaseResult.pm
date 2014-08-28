
package Aws::Support::AddCommunicationToCaseResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has result => (is => 'ro', isa => 'Bool');

}
1;
