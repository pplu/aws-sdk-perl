
package Paws::Route53::CreateReusableDelegationSetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet', required => 1);
  has Location => (is => 'ro', isa => 'Str', required => 1);

}
1;