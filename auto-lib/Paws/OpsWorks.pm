
use Paws::API;


package Paws::OpsWorks {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'opsworks');
  has version => (is => 'ro', isa => 'Str', default => '2013-02-18');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OpsWorks_20130218');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub AssignVolume {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::AssignVolume', @_);
  }
  sub AssociateElasticIp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::AssociateElasticIp', @_);
  }
  sub AttachElasticLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::AttachElasticLoadBalancer', @_);
  }
  sub CloneStack {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CloneStack', @_);
  }
  sub CreateApp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CreateApp', @_);
  }
  sub CreateDeployment {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CreateDeployment', @_);
  }
  sub CreateInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CreateInstance', @_);
  }
  sub CreateLayer {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CreateLayer', @_);
  }
  sub CreateStack {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CreateStack', @_);
  }
  sub CreateUserProfile {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::CreateUserProfile', @_);
  }
  sub DeleteApp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeleteApp', @_);
  }
  sub DeleteInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeleteInstance', @_);
  }
  sub DeleteLayer {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeleteLayer', @_);
  }
  sub DeleteStack {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeleteStack', @_);
  }
  sub DeleteUserProfile {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeleteUserProfile', @_);
  }
  sub DeregisterElasticIp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeregisterElasticIp', @_);
  }
  sub DeregisterRdsDbInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeregisterRdsDbInstance', @_);
  }
  sub DeregisterVolume {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DeregisterVolume', @_);
  }
  sub DescribeApps {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeApps', @_);
  }
  sub DescribeCommands {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeCommands', @_);
  }
  sub DescribeDeployments {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeDeployments', @_);
  }
  sub DescribeElasticIps {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeElasticIps', @_);
  }
  sub DescribeElasticLoadBalancers {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeElasticLoadBalancers', @_);
  }
  sub DescribeInstances {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeInstances', @_);
  }
  sub DescribeLayers {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeLayers', @_);
  }
  sub DescribeLoadBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeLoadBasedAutoScaling', @_);
  }
  sub DescribeMyUserProfile {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeMyUserProfile', @_);
  }
  sub DescribePermissions {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribePermissions', @_);
  }
  sub DescribeRaidArrays {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeRaidArrays', @_);
  }
  sub DescribeRdsDbInstances {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeRdsDbInstances', @_);
  }
  sub DescribeServiceErrors {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeServiceErrors', @_);
  }
  sub DescribeStacks {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeStacks', @_);
  }
  sub DescribeStackSummary {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeStackSummary', @_);
  }
  sub DescribeTimeBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeTimeBasedAutoScaling', @_);
  }
  sub DescribeUserProfiles {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeUserProfiles', @_);
  }
  sub DescribeVolumes {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DescribeVolumes', @_);
  }
  sub DetachElasticLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DetachElasticLoadBalancer', @_);
  }
  sub DisassociateElasticIp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::DisassociateElasticIp', @_);
  }
  sub GetHostnameSuggestion {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::GetHostnameSuggestion', @_);
  }
  sub RebootInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::RebootInstance', @_);
  }
  sub RegisterElasticIp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::RegisterElasticIp', @_);
  }
  sub RegisterRdsDbInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::RegisterRdsDbInstance', @_);
  }
  sub RegisterVolume {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::RegisterVolume', @_);
  }
  sub SetLoadBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::SetLoadBasedAutoScaling', @_);
  }
  sub SetPermission {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::SetPermission', @_);
  }
  sub SetTimeBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::SetTimeBasedAutoScaling', @_);
  }
  sub StartInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::StartInstance', @_);
  }
  sub StartStack {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::StartStack', @_);
  }
  sub StopInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::StopInstance', @_);
  }
  sub StopStack {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::StopStack', @_);
  }
  sub UnassignVolume {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UnassignVolume', @_);
  }
  sub UpdateApp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateApp', @_);
  }
  sub UpdateElasticIp {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateElasticIp', @_);
  }
  sub UpdateInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateInstance', @_);
  }
  sub UpdateLayer {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateLayer', @_);
  }
  sub UpdateMyUserProfile {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateMyUserProfile', @_);
  }
  sub UpdateRdsDbInstance {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateRdsDbInstance', @_);
  }
  sub UpdateStack {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateStack', @_);
  }
  sub UpdateUserProfile {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateUserProfile', @_);
  }
  sub UpdateVolume {
    my $self = shift;
    return $self->do_call('Paws::OpsWorks::UpdateVolume', @_);
  }
}
1;
