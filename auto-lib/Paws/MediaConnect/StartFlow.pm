
package Paws::MediaConnect::StartFlow;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/start/{flowArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::StartFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::StartFlow - Arguments for method StartFlow on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFlow on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method StartFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFlow.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $StartFlowResponse = $mediaconnect->StartFlow(
      FlowArn => 'My__string',

    );

    # Results:
    my $FlowArn = $StartFlowResponse->FlowArn;
    my $Status  = $StartFlowResponse->Status;

    # Returns a L<Paws::MediaConnect::StartFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/StartFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The ARN of the flow that you want to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

