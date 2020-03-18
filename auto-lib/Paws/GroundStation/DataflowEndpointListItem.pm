package Paws::GroundStation::DataflowEndpointListItem;
  use Moose;
  has DataflowEndpointGroupArn => (is => 'ro', isa => 'Str', request_name => 'dataflowEndpointGroupArn', traits => ['NameInRequest']);
  has DataflowEndpointGroupId => (is => 'ro', isa => 'Str', request_name => 'dataflowEndpointGroupId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DataflowEndpointListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::DataflowEndpointListItem object:

  $service_obj->Method(Att1 => { DataflowEndpointGroupArn => $value, ..., DataflowEndpointGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::DataflowEndpointListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->DataflowEndpointGroupArn

=head1 DESCRIPTION

Item in a list of C<DataflowEndpoint> groups.

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupArn => Str

  ARN of a dataflow endpoint group.


=head2 DataflowEndpointGroupId => Str

  UUID of a dataflow endpoint group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

