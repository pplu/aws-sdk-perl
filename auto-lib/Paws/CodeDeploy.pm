
use Paws::API;


package Paws::CodeDeploy {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'codedeploy');
  has version => (is => 'ro', isa => 'Str', default => '2014-10-06');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'CodeDeploy_20141006');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub BatchGetApplications {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::BatchGetApplications', @_);
  }
  sub BatchGetDeployments {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::BatchGetDeployments', @_);
  }
  sub CreateApplication {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::CreateApplication', @_);
  }
  sub CreateDeployment {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::CreateDeployment', @_);
  }
  sub CreateDeploymentConfig {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::CreateDeploymentConfig', @_);
  }
  sub CreateDeploymentGroup {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::CreateDeploymentGroup', @_);
  }
  sub DeleteApplication {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::DeleteApplication', @_);
  }
  sub DeleteDeploymentConfig {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::DeleteDeploymentConfig', @_);
  }
  sub DeleteDeploymentGroup {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::DeleteDeploymentGroup', @_);
  }
  sub GetApplication {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::GetApplication', @_);
  }
  sub GetApplicationRevision {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::GetApplicationRevision', @_);
  }
  sub GetDeployment {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::GetDeployment', @_);
  }
  sub GetDeploymentConfig {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::GetDeploymentConfig', @_);
  }
  sub GetDeploymentGroup {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::GetDeploymentGroup', @_);
  }
  sub GetDeploymentInstance {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::GetDeploymentInstance', @_);
  }
  sub ListApplicationRevisions {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::ListApplicationRevisions', @_);
  }
  sub ListApplications {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::ListApplications', @_);
  }
  sub ListDeploymentConfigs {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::ListDeploymentConfigs', @_);
  }
  sub ListDeploymentGroups {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::ListDeploymentGroups', @_);
  }
  sub ListDeploymentInstances {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::ListDeploymentInstances', @_);
  }
  sub ListDeployments {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::ListDeployments', @_);
  }
  sub RegisterApplicationRevision {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::RegisterApplicationRevision', @_);
  }
  sub StopDeployment {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::StopDeployment', @_);
  }
  sub UpdateApplication {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::UpdateApplication', @_);
  }
  sub UpdateDeploymentGroup {
    my $self = shift;
    return $self->do_call('Paws::CodeDeploy::UpdateDeploymentGroup', @_);
  }
}
1;
