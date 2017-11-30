package Paws::MediaConvert::VideoSelector;
  use Moose;
  has ColorSpace => (is => 'ro', isa => 'Str', request_name => 'colorSpace', traits => ['NameInRequest']);
  has ColorSpaceUsage => (is => 'ro', isa => 'Str', request_name => 'colorSpaceUsage', traits => ['NameInRequest']);
  has Hdr10Metadata => (is => 'ro', isa => 'Paws::MediaConvert::Hdr10Metadata', request_name => 'hdr10Metadata', traits => ['NameInRequest']);
  has Pid => (is => 'ro', isa => 'Int', request_name => 'pid', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::VideoSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::VideoSelector object:

  $service_obj->Method(Att1 => { ColorSpace => $value, ..., ProgramNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::VideoSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->ColorSpace

=head1 DESCRIPTION

Selector for video.

=head1 ATTRIBUTES


=head2 ColorSpace => Str

  


=head2 ColorSpaceUsage => Str

  


=head2 Hdr10Metadata => L<Paws::MediaConvert::Hdr10Metadata>

  


=head2 Pid => Int

  Use PID (Pid) to select specific video data from an input file. Specify
this value as an integer; the system automatically converts it to the
hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet
identifier, is an identifier for a set of data in an MPEG-2 transport
stream container.


=head2 ProgramNumber => Int

  Selects a specific program from within a multi-program transport
stream. Note that Quad 4K is not currently supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

