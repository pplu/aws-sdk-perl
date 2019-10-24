# Generated from default/object.tt
package Paws::MediaLive::AvailSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_Scte35TimeSignalApos MediaLive_Scte35SpliceInsert/;
  has Scte35SpliceInsert => (is => 'ro', isa => MediaLive_Scte35SpliceInsert);
  has Scte35TimeSignalApos => (is => 'ro', isa => MediaLive_Scte35TimeSignalApos);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Scte35SpliceInsert' => {
                                         'class' => 'Paws::MediaLive::Scte35SpliceInsert',
                                         'type' => 'MediaLive_Scte35SpliceInsert'
                                       },
               'Scte35TimeSignalApos' => {
                                           'class' => 'Paws::MediaLive::Scte35TimeSignalApos',
                                           'type' => 'MediaLive_Scte35TimeSignalApos'
                                         }
             },
  'NameInRequest' => {
                       'Scte35SpliceInsert' => 'scte35SpliceInsert',
                       'Scte35TimeSignalApos' => 'scte35TimeSignalApos'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AvailSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AvailSettings object:

  $service_obj->Method(Att1 => { Scte35SpliceInsert => $value, ..., Scte35TimeSignalApos => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AvailSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Scte35SpliceInsert

=head1 DESCRIPTION

Avail Settings

=head1 ATTRIBUTES


=head2 Scte35SpliceInsert => MediaLive_Scte35SpliceInsert

  


=head2 Scte35TimeSignalApos => MediaLive_Scte35TimeSignalApos

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

