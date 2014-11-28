
use Paws::API;


package Paws::Route53 {
  warn "Paws::Route53 is not stable / supported / entirely developed";
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'route53');
  has version => (is => 'ro', isa => 'Str', default => '2013-04-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V3HTTPSSignature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestXmlCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestXMLResponse');

  
  sub AssociateVPCWithHostedZone {
    my $self = shift;
    return $self->do_call('Paws::Route53::AssociateVPCWithHostedZone', @_);
  }
  sub ChangeResourceRecordSets {
    my $self = shift;
    return $self->do_call('Paws::Route53::ChangeResourceRecordSets', @_);
  }
  sub ChangeTagsForResource {
    my $self = shift;
    return $self->do_call('Paws::Route53::ChangeTagsForResource', @_);
  }
  sub CreateHealthCheck {
    my $self = shift;
    return $self->do_call('Paws::Route53::CreateHealthCheck', @_);
  }
  sub CreateHostedZone {
    my $self = shift;
    return $self->do_call('Paws::Route53::CreateHostedZone', @_);
  }
  sub CreateReusableDelegationSet {
    my $self = shift;
    return $self->do_call('Paws::Route53::CreateReusableDelegationSet', @_);
  }
  sub DeleteHealthCheck {
    my $self = shift;
    return $self->do_call('Paws::Route53::DeleteHealthCheck', @_);
  }
  sub DeleteHostedZone {
    my $self = shift;
    return $self->do_call('Paws::Route53::DeleteHostedZone', @_);
  }
  sub DeleteReusableDelegationSet {
    my $self = shift;
    return $self->do_call('Paws::Route53::DeleteReusableDelegationSet', @_);
  }
  sub DisassociateVPCFromHostedZone {
    my $self = shift;
    return $self->do_call('Paws::Route53::DisassociateVPCFromHostedZone', @_);
  }
  sub GetChange {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetChange', @_);
  }
  sub GetCheckerIpRanges {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetCheckerIpRanges', @_);
  }
  sub GetGeoLocation {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetGeoLocation', @_);
  }
  sub GetHealthCheck {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetHealthCheck', @_);
  }
  sub GetHealthCheckCount {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetHealthCheckCount', @_);
  }
  sub GetHealthCheckLastFailureReason {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetHealthCheckLastFailureReason', @_);
  }
  sub GetHealthCheckStatus {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetHealthCheckStatus', @_);
  }
  sub GetHostedZone {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetHostedZone', @_);
  }
  sub GetReusableDelegationSet {
    my $self = shift;
    return $self->do_call('Paws::Route53::GetReusableDelegationSet', @_);
  }
  sub ListGeoLocations {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListGeoLocations', @_);
  }
  sub ListHealthChecks {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListHealthChecks', @_);
  }
  sub ListHostedZones {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListHostedZones', @_);
  }
  sub ListResourceRecordSets {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListResourceRecordSets', @_);
  }
  sub ListReusableDelegationSets {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListReusableDelegationSets', @_);
  }
  sub ListTagsForResource {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListTagsForResource', @_);
  }
  sub ListTagsForResources {
    my $self = shift;
    return $self->do_call('Paws::Route53::ListTagsForResources', @_);
  }
  sub UpdateHealthCheck {
    my $self = shift;
    return $self->do_call('Paws::Route53::UpdateHealthCheck', @_);
  }
}
1;