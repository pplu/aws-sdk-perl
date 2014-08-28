
use AWS::API;


package Aws::Support {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'support');
  has version => (is => 'ro', isa => 'Str', default => '2013-04-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSSupport_20130415');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AddAttachmentsToSet {
    my $self = shift;
    return $self->do_call('Aws::Support::AddAttachmentsToSet', @_);
  }
  sub AddCommunicationToCase {
    my $self = shift;
    return $self->do_call('Aws::Support::AddCommunicationToCase', @_);
  }
  sub CreateCase {
    my $self = shift;
    return $self->do_call('Aws::Support::CreateCase', @_);
  }
  sub DescribeAttachment {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeAttachment', @_);
  }
  sub DescribeCases {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeCases', @_);
  }
  sub DescribeCommunications {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeCommunications', @_);
  }
  sub DescribeServices {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeServices', @_);
  }
  sub DescribeSeverityLevels {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeSeverityLevels', @_);
  }
  sub DescribeTrustedAdvisorCheckRefreshStatuses {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorCheckRefreshStatuses', @_);
  }
  sub DescribeTrustedAdvisorCheckResult {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorCheckResult', @_);
  }
  sub DescribeTrustedAdvisorChecks {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorChecks', @_);
  }
  sub DescribeTrustedAdvisorCheckSummaries {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorCheckSummaries', @_);
  }
  sub RefreshTrustedAdvisorCheck {
    my $self = shift;
    return $self->do_call('Aws::Support::RefreshTrustedAdvisorCheck', @_);
  }
  sub ResolveCase {
    my $self = shift;
    return $self->do_call('Aws::Support::ResolveCase', @_);
  }
}
1;
