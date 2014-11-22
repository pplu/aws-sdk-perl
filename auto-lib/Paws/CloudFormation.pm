
use Paws::API;


package Paws::CloudFormation {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudformation');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub CancelUpdateStack {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::CancelUpdateStack', @_);
  }
  sub CreateStack {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::CreateStack', @_);
  }
  sub DeleteStack {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::DeleteStack', @_);
  }
  sub DescribeStackEvents {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::DescribeStackEvents', @_);
  }
  sub DescribeStackResource {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::DescribeStackResource', @_);
  }
  sub DescribeStackResources {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::DescribeStackResources', @_);
  }
  sub DescribeStacks {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::DescribeStacks', @_);
  }
  sub EstimateTemplateCost {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::EstimateTemplateCost', @_);
  }
  sub GetStackPolicy {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::GetStackPolicy', @_);
  }
  sub GetTemplate {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::GetTemplate', @_);
  }
  sub GetTemplateSummary {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::GetTemplateSummary', @_);
  }
  sub ListStackResources {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::ListStackResources', @_);
  }
  sub ListStacks {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::ListStacks', @_);
  }
  sub SetStackPolicy {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::SetStackPolicy', @_);
  }
  sub SignalResource {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::SignalResource', @_);
  }
  sub UpdateStack {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::UpdateStack', @_);
  }
  sub ValidateTemplate {
    my $self = shift;
    return $self->do_call('Paws::CloudFormation::ValidateTemplate', @_);
  }
}
1;