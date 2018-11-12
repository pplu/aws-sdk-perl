package Paws::Signer::SigningImageFormat;
  use Moose;
  has DefaultFormat => (is => 'ro', isa => 'Str', request_name => 'defaultFormat', traits => ['NameInRequest'], required => 1);
  has SupportedFormats => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedFormats', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningImageFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningImageFormat object:

  $service_obj->Method(Att1 => { DefaultFormat => $value, ..., SupportedFormats => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningImageFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultFormat

=head1 DESCRIPTION

The image format of an AWS Signer platform or profile.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultFormat => Str

  The default format of an AWS Signer signing image.


=head2 B<REQUIRED> SupportedFormats => ArrayRef[Str|Undef]

  The supported formats of an AWS Signer signing image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

