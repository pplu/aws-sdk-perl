package Paws::MediaLive::FrameCaptureGroupSettings;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::MediaLive::OutputLocationRef', request_name => 'destination', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::FrameCaptureGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::FrameCaptureGroupSettings object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Destination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::FrameCaptureGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Frame Capture Group Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::MediaLive::OutputLocationRef>

  The destination for the frame capture files. Either the URI for an
Amazon S3 bucket and object, plus a file name prefix (for example,
s3ssl://sportsDelivery/highlights/20180820/curling_) or the URI for a
MediaStore container, plus a file name prefix (for example,
mediastoressl://sportsDelivery/20180820/curling_). The final file names
consist of the prefix from the destination field (for example,
"curling_") + name modifier + the counter (5 digits, starting from
00001) + extension (which is always .jpg). For example,
curlingLow.00001.jpg



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

