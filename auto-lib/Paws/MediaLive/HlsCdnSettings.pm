package Paws::MediaLive::HlsCdnSettings;
  use Moose;
  has HlsAkamaiSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsAkamaiSettings', request_name => 'hlsAkamaiSettings', traits => ['NameInRequest']);
  has HlsBasicPutSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsBasicPutSettings', request_name => 'hlsBasicPutSettings', traits => ['NameInRequest']);
  has HlsMediaStoreSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsMediaStoreSettings', request_name => 'hlsMediaStoreSettings', traits => ['NameInRequest']);
  has HlsWebdavSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsWebdavSettings', request_name => 'hlsWebdavSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsCdnSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsCdnSettings object:

  $service_obj->Method(Att1 => { HlsAkamaiSettings => $value, ..., HlsWebdavSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsCdnSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->HlsAkamaiSettings

=head1 DESCRIPTION

Placeholder documentation for HlsCdnSettings

=head1 ATTRIBUTES


=head2 HlsAkamaiSettings => L<Paws::MediaLive::HlsAkamaiSettings>

  


=head2 HlsBasicPutSettings => L<Paws::MediaLive::HlsBasicPutSettings>

  


=head2 HlsMediaStoreSettings => L<Paws::MediaLive::HlsMediaStoreSettings>

  


=head2 HlsWebdavSettings => L<Paws::MediaLive::HlsWebdavSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

