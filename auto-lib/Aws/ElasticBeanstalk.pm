
use AWS::API;


package Aws::ElasticBeanstalk {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticbeanstalk');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CheckDNSAvailability {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CheckDNSAvailability', @_);
  }
  sub CreateApplication {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateApplication', @_);
  }
  sub CreateApplicationVersion {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateApplicationVersion', @_);
  }
  sub CreateConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateConfigurationTemplate', @_);
  }
  sub CreateEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateEnvironment', @_);
  }
  sub CreateStorageLocation {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateStorageLocation', @_);
  }
  sub DeleteApplication {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteApplication', @_);
  }
  sub DeleteApplicationVersion {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteApplicationVersion', @_);
  }
  sub DeleteConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteConfigurationTemplate', @_);
  }
  sub DeleteEnvironmentConfiguration {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration', @_);
  }
  sub DescribeApplications {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeApplications', @_);
  }
  sub DescribeApplicationVersions {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeApplicationVersions', @_);
  }
  sub DescribeConfigurationOptions {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeConfigurationOptions', @_);
  }
  sub DescribeConfigurationSettings {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeConfigurationSettings', @_);
  }
  sub DescribeEnvironmentResources {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeEnvironmentResources', @_);
  }
  sub DescribeEnvironments {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeEnvironments', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeEvents', @_);
  }
  sub ListAvailableSolutionStacks {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::ListAvailableSolutionStacks', @_);
  }
  sub RebuildEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RebuildEnvironment', @_);
  }
  sub RequestEnvironmentInfo {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RequestEnvironmentInfo', @_);
  }
  sub RestartAppServer {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RestartAppServer', @_);
  }
  sub RetrieveEnvironmentInfo {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RetrieveEnvironmentInfo', @_);
  }
  sub SwapEnvironmentCNAMEs {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs', @_);
  }
  sub TerminateEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::TerminateEnvironment', @_);
  }
  sub UpdateApplication {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateApplication', @_);
  }
  sub UpdateApplicationVersion {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateApplicationVersion', @_);
  }
  sub UpdateConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateConfigurationTemplate', @_);
  }
  sub UpdateEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateEnvironment', @_);
  }
  sub ValidateConfigurationSettings {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::ValidateConfigurationSettings', @_);
  }
}
1;