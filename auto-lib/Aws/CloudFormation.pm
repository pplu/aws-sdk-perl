
use AWS::API;


package Aws::CloudFormation {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudformation');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CancelUpdateStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::CancelUpdateStack', @_);
  }
  sub CreateStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::CreateStack', @_);
  }
  sub DeleteStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DeleteStack', @_);
  }
  sub DescribeStackEvents {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStackEvents', @_);
  }
  sub DescribeStackResource {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStackResource', @_);
  }
  sub DescribeStackResources {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStackResources', @_);
  }
  sub DescribeStacks {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStacks', @_);
  }
  sub EstimateTemplateCost {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::EstimateTemplateCost', @_);
  }
  sub GetStackPolicy {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::GetStackPolicy', @_);
  }
  sub GetTemplate {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::GetTemplate', @_);
  }
  sub ListStackResources {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::ListStackResources', @_);
  }
  sub ListStacks {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::ListStacks', @_);
  }
  sub SetStackPolicy {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::SetStackPolicy', @_);
  }
  sub UpdateStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::UpdateStack', @_);
  }
  sub ValidateTemplate {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::ValidateTemplate', @_);
  }
}
1;