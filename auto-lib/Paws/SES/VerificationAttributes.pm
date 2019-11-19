# Generated from default/map_str_to_obj.tt
package Paws::SES::VerificationAttributes;
  use Moo;
  with 'Paws::API::StrToObjMapParser';
  use Types::Standard qw/HashRef/;
  use Paws::SES::Types qw/SES_IdentityVerificationAttributes/;

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has Map => (is => 'ro', isa =>HashRef[SES_IdentityVerificationAttributes]);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'Map' => {
                                          type => 'HashRef[SES_IdentityVerificationAttributes]',
                                          class => 'Paws::SES::IdentityVerificationAttributes',
                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::VerificationAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::VerificationAttributes object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::VerificationAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 Map => 

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

