
package Aws::SDB::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'DomainName');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;