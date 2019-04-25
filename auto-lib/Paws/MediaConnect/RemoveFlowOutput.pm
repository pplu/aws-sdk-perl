
package Paws::MediaConnect::RemoveFlowOutput;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has OutputArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'outputArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveFlowOutput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/outputs/{outputArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::RemoveFlowOutputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowOutput - Arguments for method RemoveFlowOutput on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveFlowOutput on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method RemoveFlowOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveFlowOutput.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $RemoveFlowOutputResponse = $mediaconnect->RemoveFlowOutput(
      FlowArn   => 'My__string',
      OutputArn => 'My__string',

    );

    # Results:
    my $FlowArn   = $RemoveFlowOutputResponse->FlowArn;
    my $OutputArn = $RemoveFlowOutputResponse->OutputArn;

    # Returns a L<Paws::MediaConnect::RemoveFlowOutputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/RemoveFlowOutput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The flow that you want to remove an output from.



=head2 B<REQUIRED> OutputArn => Str

The ARN of the output that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveFlowOutput in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

