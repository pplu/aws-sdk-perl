
package Paws::Pinpoint::UpdateEndpointsBatch;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has EndpointBatchRequest => (is => 'ro', isa => 'Paws::Pinpoint::EndpointBatchRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointBatchRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpointsBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateEndpointsBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateEndpointsBatch - Arguments for method UpdateEndpointsBatch on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpointsBatch on the 
Amazon Pinpoint service. Use the attributes of this class
as arguments to method UpdateEndpointsBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpointsBatch.

As an example:

  $service_obj->UpdateEndpointsBatch(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> EndpointBatchRequest => L<Paws::Pinpoint::EndpointBatchRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpointsBatch in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

