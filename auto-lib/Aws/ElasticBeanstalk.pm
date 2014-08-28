
use AWS::API;


package Aws::ElasticBeanstalk::CheckDNSAvailabilityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Available => (is => 'ro', isa => 'Bool');
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::CreateApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
package Aws::ElasticBeanstalk::CreateApplicationVersionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
package Aws::ElasticBeanstalk::CreateConfigurationTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::CreateEnvironmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::CreateStorageLocationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has S3Bucket => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::DescribeApplicationVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationVersionDescription]');

}
package Aws::ElasticBeanstalk::DescribeApplicationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Applications => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationDescription]');

}
package Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationSettingsDescription]');

}
package Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EnvironmentResources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourceDescription');

}
package Aws::ElasticBeanstalk::DescribeEnvironmentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Environments => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentDescription]');

}
package Aws::ElasticBeanstalk::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EventDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentInfoDescription]');

}
package Aws::ElasticBeanstalk::TerminateEnvironmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::UpdateApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
package Aws::ElasticBeanstalk::UpdateApplicationVersionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
package Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::UpdateEnvironmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ValidationMessage]');

}

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
