
package Paws::Support::AddCommunicationToCaseResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has result => (is => 'ro', isa => 'Bool');

}
1;