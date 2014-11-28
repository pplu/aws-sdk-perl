
package Paws::Route53::GetCheckerIpRangesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has CheckerIpRanges => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;