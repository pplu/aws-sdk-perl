package Paws::MediaLive::AvailBlanking;
  use Moose;
  has AvailBlankingImage => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'availBlankingImage', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AvailBlanking

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AvailBlanking object:

  $service_obj->Method(Att1 => { AvailBlankingImage => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AvailBlanking object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailBlankingImage

=head1 DESCRIPTION

Placeholder documentation for AvailBlanking

=head1 ATTRIBUTES


=head2 AvailBlankingImage => L<Paws::MediaLive::InputLocation>

  Blanking image to be used. Leave empty for solid black. Only bmp and
png images are supported.


=head2 State => Str

  When set to enabled, causes video, audio and captions to be blanked
when insertion metadata is added.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

