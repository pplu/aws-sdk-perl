package Paws::DeviceFarm::Sample;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Sample

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Sample object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Sample object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a sample of performance data.

=head1 ATTRIBUTES


=head2 Arn => Str

  The sample's ARN.


=head2 Type => Str

  The sample's type.

Must be one of the following values:

=over

=item *

CPU: A CPU sample type. This is expressed as the app processing CPU
time (including child processes) as reported by process, as a
percentage.

=item *

MEMORY: A memory usage sample type. This is expressed as the total
proportional set size of an app process, in kilobytes.

=item *

NATIVE_AVG_DRAWTIME

=item *

NATIVE_FPS

=item *

NATIVE_FRAMES

=item *

NATIVE_MAX_DRAWTIME

=item *

NATIVE_MIN_DRAWTIME

=item *

OPENGL_AVG_DRAWTIME

=item *

OPENGL_FPS

=item *

OPENGL_FRAMES

=item *

OPENGL_MAX_DRAWTIME

=item *

OPENGL_MIN_DRAWTIME

=item *

RX

=item *

RX_RATE: The total number of bytes per second (TCP and UDP) that are
sent, by app process.

=item *

THREADS: A threads sample type. This is expressed as the total number
of threads per app process.

=item *

TX

=item *

TX_RATE: The total number of bytes per second (TCP and UDP) that are
received, by app process.

=back



=head2 Url => Str

  The pre-signed Amazon S3 URL that can be used with a corresponding GET
request to download the sample's file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

