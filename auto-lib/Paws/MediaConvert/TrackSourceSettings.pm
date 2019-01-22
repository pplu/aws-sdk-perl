package Paws::MediaConvert::TrackSourceSettings;
  use Moose;
  has TrackNumber => (is => 'ro', isa => 'Int', request_name => 'trackNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TrackSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TrackSourceSettings object:

  $service_obj->Method(Att1 => { TrackNumber => $value, ..., TrackNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TrackSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->TrackNumber

=head1 DESCRIPTION

Settings specific to caption sources that are specfied by track number.
Sources include IMSC in IMF.

=head1 ATTRIBUTES


=head2 TrackNumber => Int

  Use this setting to select a single captions track from a source. Track
numbers correspond to the order in the captions source file. For IMF
sources, track numbering is based on the order that the captions appear
in the CPL. For example, use 1 to select the captions asset that is
listed first in the CPL. To include more than one captions track in
your job outputs, create multiple input captions selectors. Specify one
track per selector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

