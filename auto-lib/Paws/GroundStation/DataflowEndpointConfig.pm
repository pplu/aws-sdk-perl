package Paws::GroundStation::DataflowEndpointConfig;
  use Moose;
  has DataflowEndpointName => (is => 'ro', isa => 'Str', request_name => 'dataflowEndpointName', traits => ['NameInRequest'], required => 1);
  has DataflowEndpointRegion => (is => 'ro', isa => 'Str', request_name => 'dataflowEndpointRegion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DataflowEndpointConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::DataflowEndpointConfig object:

  $service_obj->Method(Att1 => { DataflowEndpointName => $value, ..., DataflowEndpointRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::DataflowEndpointConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DataflowEndpointName

=head1 DESCRIPTION

Information about the dataflow endpoint C<Config>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataflowEndpointName => Str

  Name of a dataflow endpoint.


=head2 DataflowEndpointRegion => Str

  Region of a dataflow endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

