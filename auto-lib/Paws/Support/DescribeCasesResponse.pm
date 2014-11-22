
package Paws::Support::DescribeCasesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has cases => (is => 'ro', isa => 'ArrayRef[Paws::Support::CaseDetails]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;