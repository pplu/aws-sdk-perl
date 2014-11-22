
use Paws::API;


package Paws::Route53Domains {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'route53domains');
  has version => (is => 'ro', isa => 'Str', default => '2014-05-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Route53Domains_v20140515');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CheckDomainAvailability {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::CheckDomainAvailability', @_);
  }
  sub DisableDomainAutoRenew {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::DisableDomainAutoRenew', @_);
  }
  sub DisableDomainTransferLock {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::DisableDomainTransferLock', @_);
  }
  sub EnableDomainAutoRenew {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::EnableDomainAutoRenew', @_);
  }
  sub EnableDomainTransferLock {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::EnableDomainTransferLock', @_);
  }
  sub GetDomainDetail {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::GetDomainDetail', @_);
  }
  sub GetOperationDetail {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::GetOperationDetail', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::ListDomains', @_);
  }
  sub ListOperations {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::ListOperations', @_);
  }
  sub RegisterDomain {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::RegisterDomain', @_);
  }
  sub RetrieveDomainAuthCode {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::RetrieveDomainAuthCode', @_);
  }
  sub TransferDomain {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::TransferDomain', @_);
  }
  sub UpdateDomainContact {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::UpdateDomainContact', @_);
  }
  sub UpdateDomainContactPrivacy {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::UpdateDomainContactPrivacy', @_);
  }
  sub UpdateDomainNameservers {
    my $self = shift;
    return $self->do_call('Paws::Route53Domains::UpdateDomainNameservers', @_);
  }
}
1;
