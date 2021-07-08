
package Paws::Appflow::StartFlow;
  use Moose;
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-flow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::StartFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::StartFlow - Arguments for method StartFlow on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFlow on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method StartFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFlow.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $StartFlowResponse = $appflow->StartFlow(
      FlowName => 'MyFlowName',

    );

    # Results:
    my $ExecutionId = $StartFlowResponse->ExecutionId;
    my $FlowArn     = $StartFlowResponse->FlowArn;
    my $FlowStatus  = $StartFlowResponse->FlowStatus;

    # Returns a L<Paws::Appflow::StartFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/StartFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFlow in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

