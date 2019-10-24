# Generated from default/map_str_to_native.tt
package Paws::CloudWatch::DatapointValueMap;
  use Moo;
  use Types::Standard qw/HashRef Num/;
  with 'Paws::API::StrToNativeMapParser';
  use Paws::CloudWatch::Types qw//;

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has Map => (is => 'ro', isa => HashRef[Num]);

  sub params_map {
    my $params1 = {
                    types => {
                               'Map' => {
                                          type => 'HashRef[Num]',
                                          class => '',
                                        },
                             },
                  };
    return $params1;
  }
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DatapointValueMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::DatapointValueMap object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::DatapointValueMap object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 Map => 

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

