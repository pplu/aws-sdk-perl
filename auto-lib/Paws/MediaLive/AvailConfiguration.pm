# Generated from default/object.tt
package Paws::MediaLive::AvailConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_AvailSettings/;
  has AvailSettings => (is => 'ro', isa => MediaLive_AvailSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AvailSettings' => {
                                    'class' => 'Paws::MediaLive::AvailSettings',
                                    'type' => 'MediaLive_AvailSettings'
                                  }
             },
  'NameInRequest' => {
                       'AvailSettings' => 'availSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AvailConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AvailConfiguration object:

  $service_obj->Method(Att1 => { AvailSettings => $value, ..., AvailSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AvailConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailSettings

=head1 DESCRIPTION

Avail Configuration

=head1 ATTRIBUTES


=head2 AvailSettings => MediaLive_AvailSettings

  Ad avail settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

