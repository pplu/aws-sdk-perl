# Generated from default/object.tt
package Paws::AlexaForBusiness::SipAddress;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has Type => (is => 'ro', isa => Str, required => 1);
  has Uri => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Uri' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Type' => 1,
                    'Uri' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SipAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::SipAddress object:

  $service_obj->Method(Att1 => { Type => $value, ..., Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::SipAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

The SIP address for the contact containing the URI and SIP address
type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The type of the SIP address.


=head2 B<REQUIRED> Uri => Str

  The URI for the SIP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

