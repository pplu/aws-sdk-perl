
package Paws::Route53Domains::GetOperationDetailResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainName => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubmittedDate => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

}
1;