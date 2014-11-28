
package Paws::Route53::GetReusableDelegationSetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet', required => 1);

}
1;