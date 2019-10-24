# Generated from default/object.tt
package Paws::MediaLive::InputDestination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_InputDestinationVpc/;
  has Ip => (is => 'ro', isa => Str);
  has Port => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);
  has Vpc => (is => 'ro', isa => MediaLive_InputDestinationVpc);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Vpc' => {
                          'class' => 'Paws::MediaLive::InputDestinationVpc',
                          'type' => 'MediaLive_InputDestinationVpc'
                        },
               'Url' => {
                          'type' => 'Str'
                        },
               'Port' => {
                           'type' => 'Str'
                         },
               'Ip' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Vpc' => 'vpc',
                       'Url' => 'url',
                       'Port' => 'port',
                       'Ip' => 'ip'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputDestination object:

  $service_obj->Method(Att1 => { Ip => $value, ..., Vpc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->Ip

=head1 DESCRIPTION

The settings for a PUSH type input.

=head1 ATTRIBUTES


=head2 Ip => Str

  The system-generated static IP address of endpoint. It remains fixed
for the lifetime of the input.


=head2 Port => Str

  The port number for the input.


=head2 Url => Str

  This represents the endpoint that the customer stream will be pushed
to.


=head2 Vpc => MediaLive_InputDestinationVpc

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

