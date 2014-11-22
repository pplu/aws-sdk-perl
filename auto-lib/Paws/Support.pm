
use Paws::API;


package Paws::Support {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'support');
  has version => (is => 'ro', isa => 'Str', default => '2013-04-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSSupport_20130415');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub AddAttachmentsToSet {
    my $self = shift;
    return $self->do_call('Paws::Support::AddAttachmentsToSet', @_);
  }
  sub AddCommunicationToCase {
    my $self = shift;
    return $self->do_call('Paws::Support::AddCommunicationToCase', @_);
  }
  sub CreateCase {
    my $self = shift;
    return $self->do_call('Paws::Support::CreateCase', @_);
  }
  sub DescribeAttachment {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeAttachment', @_);
  }
  sub DescribeCases {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeCases', @_);
  }
  sub DescribeCommunications {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeCommunications', @_);
  }
  sub DescribeServices {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeServices', @_);
  }
  sub DescribeSeverityLevels {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeSeverityLevels', @_);
  }
  sub DescribeTrustedAdvisorCheckRefreshStatuses {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses', @_);
  }
  sub DescribeTrustedAdvisorCheckResult {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorCheckResult', @_);
  }
  sub DescribeTrustedAdvisorChecks {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorChecks', @_);
  }
  sub DescribeTrustedAdvisorCheckSummaries {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorCheckSummaries', @_);
  }
  sub RefreshTrustedAdvisorCheck {
    my $self = shift;
    return $self->do_call('Paws::Support::RefreshTrustedAdvisorCheck', @_);
  }
  sub ResolveCase {
    my $self = shift;
    return $self->do_call('Paws::Support::ResolveCase', @_);
  }
}
1;
