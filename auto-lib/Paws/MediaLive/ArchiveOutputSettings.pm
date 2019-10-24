# Generated from default/object.tt
package Paws::MediaLive::ArchiveOutputSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_ArchiveContainerSettings/;
  has ContainerSettings => (is => 'ro', isa => MediaLive_ArchiveContainerSettings, required => 1);
  has Extension => (is => 'ro', isa => Str);
  has NameModifier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Extension' => {
                                'type' => 'Str'
                              },
               'NameModifier' => {
                                   'type' => 'Str'
                                 },
               'ContainerSettings' => {
                                        'class' => 'Paws::MediaLive::ArchiveContainerSettings',
                                        'type' => 'MediaLive_ArchiveContainerSettings'
                                      }
             },
  'NameInRequest' => {
                       'Extension' => 'extension',
                       'NameModifier' => 'nameModifier',
                       'ContainerSettings' => 'containerSettings'
                     },
  'IsRequired' => {
                    'ContainerSettings' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ArchiveOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ArchiveOutputSettings object:

  $service_obj->Method(Att1 => { ContainerSettings => $value, ..., NameModifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ArchiveOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerSettings

=head1 DESCRIPTION

Archive Output Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerSettings => MediaLive_ArchiveContainerSettings

  Settings specific to the container type of the file.


=head2 Extension => Str

  Output file extension. If excluded, this will be auto-selected from the
container type.


=head2 NameModifier => Str

  String concatenated to the end of the destination filename. Required
for multiple outputs of the same type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

