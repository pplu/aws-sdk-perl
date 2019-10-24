# Generated from default/object.tt
package Paws::GroundStation::SocketAddress;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GroundStation::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has Port => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Port' => {
                           'type' => 'Int'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Port' => 'port',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Port' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::SocketAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::SocketAddress object:

  $service_obj->Method(Att1 => { Name => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::SocketAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about the socket address.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  Name of a socket address.


=head2 B<REQUIRED> Port => Int

  Port of a socket address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

