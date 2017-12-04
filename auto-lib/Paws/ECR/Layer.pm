package Paws::ECR::Layer;
  use Moose;
  has LayerAvailability => (is => 'ro', isa => 'Str', request_name => 'layerAvailability', traits => ['NameInRequest']);
  has LayerDigest => (is => 'ro', isa => 'Str', request_name => 'layerDigest', traits => ['NameInRequest']);
  has LayerSize => (is => 'ro', isa => 'Int', request_name => 'layerSize', traits => ['NameInRequest']);
  has MediaType => (is => 'ro', isa => 'Str', request_name => 'mediaType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::Layer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::Layer object:

  $service_obj->Method(Att1 => { LayerAvailability => $value, ..., MediaType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::Layer object:

  $result = $service_obj->Method(...);
  $result->Att1->LayerAvailability

=head1 DESCRIPTION

An object representing an Amazon ECR image layer.

=head1 ATTRIBUTES


=head2 LayerAvailability => Str

  The availability status of the image layer.


=head2 LayerDigest => Str

  The C<sha256> digest of the image layer.


=head2 LayerSize => Int

  The size, in bytes, of the image layer.


=head2 MediaType => Str

  The media type of the layer, such as
C<application/vnd.docker.image.rootfs.diff.tar.gzip> or
C<application/vnd.oci.image.layer.v1.tar+gzip>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

