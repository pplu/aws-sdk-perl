package Paws::MediaConvert::AncillarySourceSettings;
  use Moose;
  has SourceAncillaryChannelNumber => (is => 'ro', isa => 'Int', request_name => 'sourceAncillaryChannelNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AncillarySourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AncillarySourceSettings object:

  $service_obj->Method(Att1 => { SourceAncillaryChannelNumber => $value, ..., SourceAncillaryChannelNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AncillarySourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceAncillaryChannelNumber

=head1 DESCRIPTION

Settings for ancillary captions source.

=head1 ATTRIBUTES


=head2 SourceAncillaryChannelNumber => Int

  Specifies the 608 channel number in the ancillary data track from which
to extract captions. Unused for passthrough.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

