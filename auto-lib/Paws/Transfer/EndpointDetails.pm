# Generated from default/object.tt
package Paws::Transfer::EndpointDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transfer::Types qw//;
  has VpcEndpointId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcEndpointId' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::EndpointDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::EndpointDetails object:

  $service_obj->Method(Att1 => { VpcEndpointId => $value, ..., VpcEndpointId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::EndpointDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->VpcEndpointId

=head1 DESCRIPTION

The configuration settings for the virtual private cloud (VPC) endpoint
for your SFTP server.

=head1 ATTRIBUTES


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

