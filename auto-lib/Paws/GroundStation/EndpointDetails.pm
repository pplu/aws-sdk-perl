package Paws::GroundStation::EndpointDetails;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::GroundStation::DataflowEndpoint', request_name => 'endpoint', traits => ['NameInRequest']);
  has SecurityDetails => (is => 'ro', isa => 'Paws::GroundStation::SecurityDetails', request_name => 'securityDetails', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::EndpointDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::EndpointDetails object:

  $service_obj->Method(Att1 => { Endpoint => $value, ..., SecurityDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::EndpointDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

Information about the endpoint details.

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::GroundStation::DataflowEndpoint>

  A dataflow endpoint.


=head2 SecurityDetails => L<Paws::GroundStation::SecurityDetails>

  Endpoint security details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

