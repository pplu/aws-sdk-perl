
use AWS::API;


package Aws::EMR {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticmapreduce');
  has version => (is => 'ro', isa => 'Str', default => '2009-03-31');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'ElasticMapReduce');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AddInstanceGroups {
    my $self = shift;
    return $self->do_call('Aws::EMR::AddInstanceGroups', @_);
  }
  sub AddJobFlowSteps {
    my $self = shift;
    return $self->do_call('Aws::EMR::AddJobFlowSteps', @_);
  }
  sub AddTags {
    my $self = shift;
    return $self->do_call('Aws::EMR::AddTags', @_);
  }
  sub DescribeCluster {
    my $self = shift;
    return $self->do_call('Aws::EMR::DescribeCluster', @_);
  }
  sub DescribeJobFlows {
    my $self = shift;
    return $self->do_call('Aws::EMR::DescribeJobFlows', @_);
  }
  sub DescribeStep {
    my $self = shift;
    return $self->do_call('Aws::EMR::DescribeStep', @_);
  }
  sub ListBootstrapActions {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListBootstrapActions', @_);
  }
  sub ListClusters {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListClusters', @_);
  }
  sub ListInstanceGroups {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListInstanceGroups', @_);
  }
  sub ListInstances {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListInstances', @_);
  }
  sub ListSteps {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListSteps', @_);
  }
  sub ModifyInstanceGroups {
    my $self = shift;
    return $self->do_call('Aws::EMR::ModifyInstanceGroups', @_);
  }
  sub RemoveTags {
    my $self = shift;
    return $self->do_call('Aws::EMR::RemoveTags', @_);
  }
  sub RunJobFlow {
    my $self = shift;
    return $self->do_call('Aws::EMR::RunJobFlow', @_);
  }
  sub SetTerminationProtection {
    my $self = shift;
    return $self->do_call('Aws::EMR::SetTerminationProtection', @_);
  }
  sub SetVisibleToAllUsers {
    my $self = shift;
    return $self->do_call('Aws::EMR::SetVisibleToAllUsers', @_);
  }
  sub TerminateJobFlows {
    my $self = shift;
    return $self->do_call('Aws::EMR::TerminateJobFlows', @_);
  }
}
1;
