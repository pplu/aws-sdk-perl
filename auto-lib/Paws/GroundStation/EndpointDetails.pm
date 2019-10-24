# Generated from default/object.tt
package Paws::GroundStation::EndpointDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::GroundStation::Types qw/GroundStation_DataflowEndpoint GroundStation_SecurityDetails/;
  has Endpoint => (is => 'ro', isa => GroundStation_DataflowEndpoint);
  has SecurityDetails => (is => 'ro', isa => GroundStation_SecurityDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityDetails' => {
                                      'class' => 'Paws::GroundStation::SecurityDetails',
                                      'type' => 'GroundStation_SecurityDetails'
                                    },
               'Endpoint' => {
                               'class' => 'Paws::GroundStation::DataflowEndpoint',
                               'type' => 'GroundStation_DataflowEndpoint'
                             }
             },
  'NameInRequest' => {
                       'SecurityDetails' => 'securityDetails',
                       'Endpoint' => 'endpoint'
                     }
}
;
    return $Params_map;
  }


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


=head2 Endpoint => GroundStation_DataflowEndpoint

  A dataflow endpoint.


=head2 SecurityDetails => GroundStation_SecurityDetails

  Endpoint security details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

