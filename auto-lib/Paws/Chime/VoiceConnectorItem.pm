# Generated from default/object.tt
package Paws::Chime::VoiceConnectorItem;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Chime::Types qw//;
  has Priority => (is => 'ro', isa => Int, required => 1);
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VoiceConnectorId' => {
                                       'type' => 'Str'
                                     },
               'Priority' => {
                               'type' => 'Int'
                             }
             },
  'IsRequired' => {
                    'Priority' => 1,
                    'VoiceConnectorId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::VoiceConnectorItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::VoiceConnectorItem object:

  $service_obj->Method(Att1 => { Priority => $value, ..., VoiceConnectorId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::VoiceConnectorItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Priority

=head1 DESCRIPTION

For Amazon Chime Voice Connector groups, the Amazon Chime Voice
Connectors to which to route inbound calls. Includes priority
configuration settings. Limit: 3 C<VoiceConnectorItems> per Amazon
Chime Voice Connector group.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Priority => Int

  The priority associated with the Amazon Chime Voice Connector, with 1
being the highest priority. Higher priority Amazon Chime Voice
Connectors are attempted first.


=head2 B<REQUIRED> VoiceConnectorId => Str

  The Amazon Chime Voice Connector ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

