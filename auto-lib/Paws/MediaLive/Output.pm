package Paws::MediaLive::Output;
  use Moose;
  has AudioDescriptionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'audioDescriptionNames', traits => ['NameInRequest']);
  has CaptionDescriptionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'captionDescriptionNames', traits => ['NameInRequest']);
  has OutputName => (is => 'ro', isa => 'Str', request_name => 'outputName', traits => ['NameInRequest']);
  has OutputSettings => (is => 'ro', isa => 'Paws::MediaLive::OutputSettings', request_name => 'outputSettings', traits => ['NameInRequest'], required => 1);
  has VideoDescriptionName => (is => 'ro', isa => 'Str', request_name => 'videoDescriptionName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Output object:

  $service_obj->Method(Att1 => { AudioDescriptionNames => $value, ..., VideoDescriptionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Output object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptionNames

=head1 DESCRIPTION

Output settings. There can be multiple outputs within a group.

=head1 ATTRIBUTES


=head2 AudioDescriptionNames => ArrayRef[Str|Undef]

  The names of the AudioDescriptions used as audio sources for this
output.


=head2 CaptionDescriptionNames => ArrayRef[Str|Undef]

  The names of the CaptionDescriptions used as caption sources for this
output.


=head2 OutputName => Str

  The name used to identify an output.


=head2 B<REQUIRED> OutputSettings => L<Paws::MediaLive::OutputSettings>

  Output type-specific settings.


=head2 VideoDescriptionName => Str

  The name of the VideoDescription used as the source for this output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

