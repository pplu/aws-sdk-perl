package Paws::MediaConvert::MsSmoothEncryptionSettings;
  use Moose;
  has SpekeKeyProvider => (is => 'ro', isa => 'Paws::MediaConvert::SpekeKeyProvider', request_name => 'spekeKeyProvider', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MsSmoothEncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MsSmoothEncryptionSettings object:

  $service_obj->Method(Att1 => { SpekeKeyProvider => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MsSmoothEncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->SpekeKeyProvider

=head1 DESCRIPTION

If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
specify the value SpekeKeyProvider.

=head1 ATTRIBUTES


=head2 SpekeKeyProvider => L<Paws::MediaConvert::SpekeKeyProvider>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

