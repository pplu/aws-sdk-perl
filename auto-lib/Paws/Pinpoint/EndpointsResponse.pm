# Generated from default/object.tt
package Paws::Pinpoint::EndpointsResponse;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Pinpoint::Types qw/Pinpoint_EndpointResponse/;
  has Item => (is => 'ro', isa => ArrayRef[Pinpoint_EndpointResponse], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Item' => {
                           'class' => 'Paws::Pinpoint::EndpointResponse',
                           'type' => 'ArrayRef[Pinpoint_EndpointResponse]'
                         }
             },
  'IsRequired' => {
                    'Item' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointsResponse object:

  $service_obj->Method(Att1 => { Item => $value, ..., Item => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Provides information about all the endpoints that are associated with a
user ID.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[Pinpoint_EndpointResponse]

  An array of responses, one for each endpoint that's associated with the
user ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

