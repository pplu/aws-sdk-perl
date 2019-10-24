# Generated from default/object.tt
package Paws::MediaLive::ArchiveGroupSettings;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaLive::Types qw/MediaLive_OutputLocationRef/;
  has Destination => (is => 'ro', isa => MediaLive_OutputLocationRef, required => 1);
  has RolloverInterval => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RolloverInterval' => {
                                       'type' => 'Int'
                                     },
               'Destination' => {
                                  'class' => 'Paws::MediaLive::OutputLocationRef',
                                  'type' => 'MediaLive_OutputLocationRef'
                                }
             },
  'NameInRequest' => {
                       'RolloverInterval' => 'rolloverInterval',
                       'Destination' => 'destination'
                     },
  'IsRequired' => {
                    'Destination' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ArchiveGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ArchiveGroupSettings object:

  $service_obj->Method(Att1 => { Destination => $value, ..., RolloverInterval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ArchiveGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Archive Group Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => MediaLive_OutputLocationRef

  A directory and base filename where archive files should be written.


=head2 RolloverInterval => Int

  Number of seconds to write to archive file before closing and starting
a new one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

