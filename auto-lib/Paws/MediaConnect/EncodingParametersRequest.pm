# Generated by default/object.tt
package Paws::MediaConnect::EncodingParametersRequest;
  use Moose;
  has CompressionFactor => (is => 'ro', isa => 'Num', request_name => 'compressionFactor', traits => ['NameInRequest'], required => 1);
  has EncoderProfile => (is => 'ro', isa => 'Str', request_name => 'encoderProfile', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::EncodingParametersRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::EncodingParametersRequest object:

  $service_obj->Method(Att1 => { CompressionFactor => $value, ..., EncoderProfile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::EncodingParametersRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CompressionFactor

=head1 DESCRIPTION

A collection of parameters that determine how MediaConnect will convert
the content. These fields only apply to outputs on flows that have a
CDI source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompressionFactor => Num

A value that is used to calculate compression for an output. The
bitrate of the output is calculated as follows: Output bitrate = (1 /
compressionFactor) * (source bitrate) This property only applies to
outputs that use the ST 2110 JPEG XS protocol, with a flow source that
uses the CDI protocol. Valid values are floating point numbers in the
range of 3.0 to 10.0, inclusive.


=head2 B<REQUIRED> EncoderProfile => Str

A setting on the encoder that drives compression settings. This
property only applies to video media streams associated with outputs
that use the ST 2110 JPEG XS protocol, if at least one source on the
flow uses the CDI protocol.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

