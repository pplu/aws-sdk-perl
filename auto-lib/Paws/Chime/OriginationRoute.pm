# Generated from default/object.tt
package Paws::Chime::OriginationRoute;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Chime::Types qw//;
  has Host => (is => 'ro', isa => Str);
  has Port => (is => 'ro', isa => Int);
  has Priority => (is => 'ro', isa => Int);
  has Protocol => (is => 'ro', isa => Str);
  has Weight => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Port' => {
                           'type' => 'Int'
                         },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'Host' => {
                           'type' => 'Str'
                         },
               'Priority' => {
                               'type' => 'Int'
                             },
               'Weight' => {
                             'type' => 'Int'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::OriginationRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::OriginationRoute object:

  $service_obj->Method(Att1 => { Host => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::OriginationRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->Host

=head1 DESCRIPTION

Origination routes define call distribution properties for your SIP
hosts to receive inbound calls using your Amazon Chime Voice Connector.
Limit: Ten origination routes for each Amazon Chime Voice Connector.

=head1 ATTRIBUTES


=head2 Host => Str

  The FQDN or IP address to contact for origination traffic.


=head2 Port => Int

  The designated origination route port. Defaults to 5060.


=head2 Priority => Int

  The priority associated with the host, with 1 being the highest
priority. Higher priority hosts are attempted first.


=head2 Protocol => Str

  The protocol to use for the origination route. Encryption-enabled
Amazon Chime Voice Connectors use TCP protocol by default.


=head2 Weight => Int

  The weight associated with the host. If hosts are equal in priority,
calls are distributed among them based on their relative weight.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

