
package Paws::Appflow::DescribeFlow;
  use Moose;
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-flow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DescribeFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeFlow - Arguments for method DescribeFlow on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFlow on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DescribeFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFlow.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DescribeFlowResponse = $appflow->DescribeFlow(
      FlowName => 'MyFlowName',

    );

    # Results:
    my $CreatedAt   = $DescribeFlowResponse->CreatedAt;
    my $CreatedBy   = $DescribeFlowResponse->CreatedBy;
    my $Description = $DescribeFlowResponse->Description;
    my $DestinationFlowConfigList =
      $DescribeFlowResponse->DestinationFlowConfigList;
    my $FlowArn           = $DescribeFlowResponse->FlowArn;
    my $FlowName          = $DescribeFlowResponse->FlowName;
    my $FlowStatus        = $DescribeFlowResponse->FlowStatus;
    my $FlowStatusMessage = $DescribeFlowResponse->FlowStatusMessage;
    my $KmsArn            = $DescribeFlowResponse->KmsArn;
    my $LastRunExecutionDetails =
      $DescribeFlowResponse->LastRunExecutionDetails;
    my $LastUpdatedAt    = $DescribeFlowResponse->LastUpdatedAt;
    my $LastUpdatedBy    = $DescribeFlowResponse->LastUpdatedBy;
    my $SourceFlowConfig = $DescribeFlowResponse->SourceFlowConfig;
    my $Tags             = $DescribeFlowResponse->Tags;
    my $Tasks            = $DescribeFlowResponse->Tasks;
    my $TriggerConfig    = $DescribeFlowResponse->TriggerConfig;

    # Returns a L<Paws::Appflow::DescribeFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DescribeFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFlow in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

