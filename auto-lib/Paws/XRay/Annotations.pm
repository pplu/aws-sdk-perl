package Paws::XRay::Annotations;
  use Moo;
  with 'Paws::API::StrToObjMapParser';
  use Types::Standard qw/HashRef ArrayRef/;
  use Paws::XRay::Types qw/XRay_ValueWithServiceIds/;

  has Map => (is => 'ro', isa => HashRef[ArrayRef[XRay_ValueWithServiceIds]]);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'Map' => {
                                          type => 'HashRef[ArrayRef[XRay_ValueWithServiceIds]]',
                                          class => 'Paws::XRay::ValueWithServiceIds',
                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Annotations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Annotations object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Annotations object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 Map => 

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

