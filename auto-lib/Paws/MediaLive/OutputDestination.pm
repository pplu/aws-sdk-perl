# Generated from default/object.tt
package Paws::MediaLive::OutputDestination;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_OutputDestinationSettings MediaLive_MediaPackageOutputDestinationSettings/;
  has Id => (is => 'ro', isa => Str);
  has MediaPackageSettings => (is => 'ro', isa => ArrayRef[MediaLive_MediaPackageOutputDestinationSettings]);
  has Settings => (is => 'ro', isa => ArrayRef[MediaLive_OutputDestinationSettings]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Settings' => {
                               'type' => 'ArrayRef[MediaLive_OutputDestinationSettings]',
                               'class' => 'Paws::MediaLive::OutputDestinationSettings'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'MediaPackageSettings' => {
                                           'type' => 'ArrayRef[MediaLive_MediaPackageOutputDestinationSettings]',
                                           'class' => 'Paws::MediaLive::MediaPackageOutputDestinationSettings'
                                         }
             },
  'NameInRequest' => {
                       'Settings' => 'settings',
                       'Id' => 'id',
                       'MediaPackageSettings' => 'mediaPackageSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputDestination object:

  $service_obj->Method(Att1 => { Id => $value, ..., Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Placeholder documentation for OutputDestination

=head1 ATTRIBUTES


=head2 Id => Str

  User-specified id. This is used in an output group or an output.


=head2 MediaPackageSettings => ArrayRef[MediaLive_MediaPackageOutputDestinationSettings]

  Destination settings for a MediaPackage output; one destination for
both encoders.


=head2 Settings => ArrayRef[MediaLive_OutputDestinationSettings]

  Destination settings for a standard output; one destination for each
redundant encoder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

