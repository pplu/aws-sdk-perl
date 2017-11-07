package Paws::ElasticTranscoder::TimeSpan;
  use Moose;
  has Duration => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::TimeSpan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::TimeSpan object:

  $service_obj->Method(Att1 => { Duration => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::TimeSpan object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

Settings that determine when a clip begins and how long it lasts.

=head1 ATTRIBUTES


=head2 Duration => Str

  The duration of the clip. The format can be either HH:mm:ss.SSS
(maximum value: 23:59:59.999; SSS is thousandths of a second) or
sssss.SSS (maximum value: 86399.999). If you don't specify a value,
Elastic Transcoder creates an output file from StartTime to the end of
the file.

If you specify a value longer than the duration of the input file,
Elastic Transcoder transcodes the file and returns a warning message.


=head2 StartTime => Str

  The place in the input file where you want a clip to start. The format
can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is
thousandths of a second) or sssss.SSS (maximum value: 86399.999). If
you don't specify a value, Elastic Transcoder starts at the beginning
of the input file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

