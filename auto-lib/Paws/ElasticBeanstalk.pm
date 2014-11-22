
use Paws::API;


package Paws::ElasticBeanstalk {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticbeanstalk');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub CheckDNSAvailability {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::CheckDNSAvailability', @_);
  }
  sub CreateApplication {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::CreateApplication', @_);
  }
  sub CreateApplicationVersion {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::CreateApplicationVersion', @_);
  }
  sub CreateConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::CreateConfigurationTemplate', @_);
  }
  sub CreateEnvironment {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::CreateEnvironment', @_);
  }
  sub CreateStorageLocation {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::CreateStorageLocation', @_);
  }
  sub DeleteApplication {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DeleteApplication', @_);
  }
  sub DeleteApplicationVersion {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DeleteApplicationVersion', @_);
  }
  sub DeleteConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DeleteConfigurationTemplate', @_);
  }
  sub DeleteEnvironmentConfiguration {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DeleteEnvironmentConfiguration', @_);
  }
  sub DescribeApplications {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeApplications', @_);
  }
  sub DescribeApplicationVersions {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeApplicationVersions', @_);
  }
  sub DescribeConfigurationOptions {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeConfigurationOptions', @_);
  }
  sub DescribeConfigurationSettings {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeConfigurationSettings', @_);
  }
  sub DescribeEnvironmentResources {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeEnvironmentResources', @_);
  }
  sub DescribeEnvironments {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeEnvironments', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::DescribeEvents', @_);
  }
  sub ListAvailableSolutionStacks {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::ListAvailableSolutionStacks', @_);
  }
  sub RebuildEnvironment {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::RebuildEnvironment', @_);
  }
  sub RequestEnvironmentInfo {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::RequestEnvironmentInfo', @_);
  }
  sub RestartAppServer {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::RestartAppServer', @_);
  }
  sub RetrieveEnvironmentInfo {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::RetrieveEnvironmentInfo', @_);
  }
  sub SwapEnvironmentCNAMEs {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::SwapEnvironmentCNAMEs', @_);
  }
  sub TerminateEnvironment {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::TerminateEnvironment', @_);
  }
  sub UpdateApplication {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::UpdateApplication', @_);
  }
  sub UpdateApplicationVersion {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::UpdateApplicationVersion', @_);
  }
  sub UpdateConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::UpdateConfigurationTemplate', @_);
  }
  sub UpdateEnvironment {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::UpdateEnvironment', @_);
  }
  sub ValidateConfigurationSettings {
    my $self = shift;
    return $self->do_call('Paws::ElasticBeanstalk::ValidateConfigurationSettings', @_);
  }
}
1;