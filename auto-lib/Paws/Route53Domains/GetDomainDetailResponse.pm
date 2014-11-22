
package Paws::Route53Domains::GetDomainDetailResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AbuseContactEmail => (is => 'ro', isa => 'Str');
  has AbuseContactPhone => (is => 'ro', isa => 'Str');
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DnsSec => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Nameserver]', required => 1);
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has RegistrarName => (is => 'ro', isa => 'Str');
  has RegistrarUrl => (is => 'ro', isa => 'Str');
  has RegistryDomainId => (is => 'ro', isa => 'Str');
  has Reseller => (is => 'ro', isa => 'Str');
  has StatusList => (is => 'ro', isa => 'ArrayRef[Str]');
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has TechPrivacy => (is => 'ro', isa => 'Bool');
  has UpdatedDate => (is => 'ro', isa => 'Str');
  has WhoIsServer => (is => 'ro', isa => 'Str');

}
1;