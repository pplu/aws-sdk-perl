package Paws::ECR::ImageIdentifier;
  use Moose;
  has ImageDigest => (is => 'ro', isa => 'Str', request_name => 'imageDigest', traits => ['NameInRequest']);
  has ImageTag => (is => 'ro', isa => 'Str', request_name => 'imageTag', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ImageIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageIdentifier object:

  $service_obj->Method(Att1 => { ImageDigest => $value, ..., ImageTag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageDigest

=head1 DESCRIPTION

An object with identifying information for an Amazon ECR image.

=head1 ATTRIBUTES


=head2 ImageDigest => Str

  The C<sha256> digest of the image manifest.


=head2 ImageTag => Str

  The tag used for the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

