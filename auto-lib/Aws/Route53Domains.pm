
use AWS::API;


package Aws::Route53Domains {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'route53domains');
  has version => (is => 'ro', isa => 'Str', default => '2014-05-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Route53Domains_v20140515');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CheckDomainAvailability {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::CheckDomainAvailability', @_);
  }
  sub DisableDomainTransferLock {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::DisableDomainTransferLock', @_);
  }
  sub EnableDomainTransferLock {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::EnableDomainTransferLock', @_);
  }
  sub GetDomainDetail {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::GetDomainDetail', @_);
  }
  sub GetOperationDetail {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::GetOperationDetail', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::ListDomains', @_);
  }
  sub ListOperations {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::ListOperations', @_);
  }
  sub RegisterDomain {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::RegisterDomain', @_);
  }
  sub RetrieveDomainAuthCode {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::RetrieveDomainAuthCode', @_);
  }
  sub TransferDomain {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::TransferDomain', @_);
  }
  sub UpdateDomainContact {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::UpdateDomainContact', @_);
  }
  sub UpdateDomainContactPrivacy {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::UpdateDomainContactPrivacy', @_);
  }
  sub UpdateDomainNameservers {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::UpdateDomainNameservers', @_);
  }
}
1;
