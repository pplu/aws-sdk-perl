
use AWS::API;


package Aws::OpsWorks {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'opsworks');
  has version => (is => 'ro', isa => 'Str', default => '2013-02-18');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OpsWorks_20130218');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AssignVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::AssignVolume', @_);
  }
  sub AssociateElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::AssociateElasticIp', @_);
  }
  sub AttachElasticLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::AttachElasticLoadBalancer', @_);
  }
  sub CloneStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CloneStack', @_);
  }
  sub CreateApp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateApp', @_);
  }
  sub CreateDeployment {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateDeployment', @_);
  }
  sub CreateInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateInstance', @_);
  }
  sub CreateLayer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateLayer', @_);
  }
  sub CreateStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateStack', @_);
  }
  sub CreateUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateUserProfile', @_);
  }
  sub DeleteApp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteApp', @_);
  }
  sub DeleteInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteInstance', @_);
  }
  sub DeleteLayer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteLayer', @_);
  }
  sub DeleteStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteStack', @_);
  }
  sub DeleteUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteUserProfile', @_);
  }
  sub DeregisterElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeregisterElasticIp', @_);
  }
  sub DeregisterRdsDbInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeregisterRdsDbInstance', @_);
  }
  sub DeregisterVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeregisterVolume', @_);
  }
  sub DescribeApps {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeApps', @_);
  }
  sub DescribeCommands {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeCommands', @_);
  }
  sub DescribeDeployments {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeDeployments', @_);
  }
  sub DescribeElasticIps {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeElasticIps', @_);
  }
  sub DescribeElasticLoadBalancers {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeElasticLoadBalancers', @_);
  }
  sub DescribeInstances {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeInstances', @_);
  }
  sub DescribeLayers {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeLayers', @_);
  }
  sub DescribeLoadBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeLoadBasedAutoScaling', @_);
  }
  sub DescribeMyUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeMyUserProfile', @_);
  }
  sub DescribePermissions {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribePermissions', @_);
  }
  sub DescribeRaidArrays {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeRaidArrays', @_);
  }
  sub DescribeRdsDbInstances {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeRdsDbInstances', @_);
  }
  sub DescribeServiceErrors {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeServiceErrors', @_);
  }
  sub DescribeStacks {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeStacks', @_);
  }
  sub DescribeStackSummary {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeStackSummary', @_);
  }
  sub DescribeTimeBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeTimeBasedAutoScaling', @_);
  }
  sub DescribeUserProfiles {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeUserProfiles', @_);
  }
  sub DescribeVolumes {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeVolumes', @_);
  }
  sub DetachElasticLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DetachElasticLoadBalancer', @_);
  }
  sub DisassociateElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DisassociateElasticIp', @_);
  }
  sub GetHostnameSuggestion {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::GetHostnameSuggestion', @_);
  }
  sub RebootInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RebootInstance', @_);
  }
  sub RegisterElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RegisterElasticIp', @_);
  }
  sub RegisterRdsDbInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RegisterRdsDbInstance', @_);
  }
  sub RegisterVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RegisterVolume', @_);
  }
  sub SetLoadBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::SetLoadBasedAutoScaling', @_);
  }
  sub SetPermission {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::SetPermission', @_);
  }
  sub SetTimeBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::SetTimeBasedAutoScaling', @_);
  }
  sub StartInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StartInstance', @_);
  }
  sub StartStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StartStack', @_);
  }
  sub StopInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StopInstance', @_);
  }
  sub StopStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StopStack', @_);
  }
  sub UnassignVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UnassignVolume', @_);
  }
  sub UpdateApp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateApp', @_);
  }
  sub UpdateElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateElasticIp', @_);
  }
  sub UpdateInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateInstance', @_);
  }
  sub UpdateLayer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateLayer', @_);
  }
  sub UpdateMyUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateMyUserProfile', @_);
  }
  sub UpdateRdsDbInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateRdsDbInstance', @_);
  }
  sub UpdateStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateStack', @_);
  }
  sub UpdateUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateUserProfile', @_);
  }
  sub UpdateVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateVolume', @_);
  }
}
1;
