package Paws::MediaConvert::ContainerSettings;
  use Moose;
  has Container => (is => 'ro', isa => 'Str', request_name => 'container', traits => ['NameInRequest']);
  has F4vSettings => (is => 'ro', isa => 'Paws::MediaConvert::F4vSettings', request_name => 'f4vSettings', traits => ['NameInRequest']);
  has M2tsSettings => (is => 'ro', isa => 'Paws::MediaConvert::M2tsSettings', request_name => 'm2tsSettings', traits => ['NameInRequest']);
  has M3u8Settings => (is => 'ro', isa => 'Paws::MediaConvert::M3u8Settings', request_name => 'm3u8Settings', traits => ['NameInRequest']);
  has MovSettings => (is => 'ro', isa => 'Paws::MediaConvert::MovSettings', request_name => 'movSettings', traits => ['NameInRequest']);
  has Mp4Settings => (is => 'ro', isa => 'Paws::MediaConvert::Mp4Settings', request_name => 'mp4Settings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ContainerSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ContainerSettings object:

  $service_obj->Method(Att1 => { Container => $value, ..., Mp4Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ContainerSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Container

=head1 DESCRIPTION

Container specific settings.

=head1 ATTRIBUTES


=head2 Container => Str

  


=head2 F4vSettings => L<Paws::MediaConvert::F4vSettings>

  


=head2 M2tsSettings => L<Paws::MediaConvert::M2tsSettings>

  


=head2 M3u8Settings => L<Paws::MediaConvert::M3u8Settings>

  


=head2 MovSettings => L<Paws::MediaConvert::MovSettings>

  


=head2 Mp4Settings => L<Paws::MediaConvert::Mp4Settings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

