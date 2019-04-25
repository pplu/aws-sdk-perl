package Paws::MediaLive::InputSpecification;
  use Moose;
  has Codec => (is => 'ro', isa => 'Str', request_name => 'codec', traits => ['NameInRequest']);
  has MaximumBitrate => (is => 'ro', isa => 'Str', request_name => 'maximumBitrate', traits => ['NameInRequest']);
  has Resolution => (is => 'ro', isa => 'Str', request_name => 'resolution', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSpecification object:

  $service_obj->Method(Att1 => { Codec => $value, ..., Resolution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Codec

=head1 DESCRIPTION

Placeholder documentation for InputSpecification

=head1 ATTRIBUTES


=head2 Codec => Str

  Input codec


=head2 MaximumBitrate => Str

  Maximum input bitrate, categorized coarsely


=head2 Resolution => Str

  Input resolution, categorized coarsely



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

