
use AWS::API;


package Aws::CodeDeploy {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'codedeploy');
  has version => (is => 'ro', isa => 'Str', default => '2014-10-06');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'CodeDeploy_20141006');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub BatchGetApplications {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::BatchGetApplications', @_);
  }
  sub BatchGetDeployments {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::BatchGetDeployments', @_);
  }
  sub CreateApplication {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::CreateApplication', @_);
  }
  sub CreateDeployment {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::CreateDeployment', @_);
  }
  sub CreateDeploymentConfig {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::CreateDeploymentConfig', @_);
  }
  sub CreateDeploymentGroup {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::CreateDeploymentGroup', @_);
  }
  sub DeleteApplication {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::DeleteApplication', @_);
  }
  sub DeleteDeploymentConfig {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::DeleteDeploymentConfig', @_);
  }
  sub DeleteDeploymentGroup {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::DeleteDeploymentGroup', @_);
  }
  sub GetApplication {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::GetApplication', @_);
  }
  sub GetApplicationRevision {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::GetApplicationRevision', @_);
  }
  sub GetDeployment {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::GetDeployment', @_);
  }
  sub GetDeploymentConfig {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::GetDeploymentConfig', @_);
  }
  sub GetDeploymentGroup {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::GetDeploymentGroup', @_);
  }
  sub GetDeploymentInstance {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::GetDeploymentInstance', @_);
  }
  sub ListApplicationRevisions {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::ListApplicationRevisions', @_);
  }
  sub ListApplications {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::ListApplications', @_);
  }
  sub ListDeploymentConfigs {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::ListDeploymentConfigs', @_);
  }
  sub ListDeploymentGroups {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::ListDeploymentGroups', @_);
  }
  sub ListDeploymentInstances {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::ListDeploymentInstances', @_);
  }
  sub ListDeployments {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::ListDeployments', @_);
  }
  sub RegisterApplicationRevision {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::RegisterApplicationRevision', @_);
  }
  sub StopDeployment {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::StopDeployment', @_);
  }
  sub UpdateApplication {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::UpdateApplication', @_);
  }
  sub UpdateDeploymentGroup {
    my $self = shift;
    return $self->do_call('Aws::CodeDeploy::UpdateDeploymentGroup', @_);
  }
}
1;
