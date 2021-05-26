
package Paws::Comprehend::UpdateEndpoint;
  use Moose;
  has DesiredInferenceUnits => (is => 'ro', isa => 'Int', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::UpdateEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::UpdateEndpoint - Arguments for method UpdateEndpoint on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpoint on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method UpdateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpoint.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $UpdateEndpointResponse = $comprehend->UpdateEndpoint(
      DesiredInferenceUnits => 1,
      EndpointArn           => 'MyComprehendEndpointArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/UpdateEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DesiredInferenceUnits => Int

The desired number of inference units to be used by the model using
this endpoint. Each inference unit represents of a throughput of 100
characters per second.



=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Number (ARN) of the endpoint being updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpoint in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

