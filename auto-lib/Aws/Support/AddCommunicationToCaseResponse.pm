
package Aws::Support::AddCommunicationToCaseResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has result => (is => 'ro', isa => 'Bool');

}
1;