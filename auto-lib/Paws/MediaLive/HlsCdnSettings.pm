# Generated from default/object.tt
package Paws::MediaLive::HlsCdnSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_HlsAkamaiSettings MediaLive_HlsMediaStoreSettings MediaLive_HlsWebdavSettings MediaLive_HlsBasicPutSettings/;
  has HlsAkamaiSettings => (is => 'ro', isa => MediaLive_HlsAkamaiSettings);
  has HlsBasicPutSettings => (is => 'ro', isa => MediaLive_HlsBasicPutSettings);
  has HlsMediaStoreSettings => (is => 'ro', isa => MediaLive_HlsMediaStoreSettings);
  has HlsWebdavSettings => (is => 'ro', isa => MediaLive_HlsWebdavSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HlsBasicPutSettings' => {
                                          'class' => 'Paws::MediaLive::HlsBasicPutSettings',
                                          'type' => 'MediaLive_HlsBasicPutSettings'
                                        },
               'HlsMediaStoreSettings' => {
                                            'class' => 'Paws::MediaLive::HlsMediaStoreSettings',
                                            'type' => 'MediaLive_HlsMediaStoreSettings'
                                          },
               'HlsWebdavSettings' => {
                                        'class' => 'Paws::MediaLive::HlsWebdavSettings',
                                        'type' => 'MediaLive_HlsWebdavSettings'
                                      },
               'HlsAkamaiSettings' => {
                                        'class' => 'Paws::MediaLive::HlsAkamaiSettings',
                                        'type' => 'MediaLive_HlsAkamaiSettings'
                                      }
             },
  'NameInRequest' => {
                       'HlsBasicPutSettings' => 'hlsBasicPutSettings',
                       'HlsMediaStoreSettings' => 'hlsMediaStoreSettings',
                       'HlsWebdavSettings' => 'hlsWebdavSettings',
                       'HlsAkamaiSettings' => 'hlsAkamaiSettings'
                     }
}
;
    return $Params_map;
  }


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

Hls Cdn Settings

=head1 ATTRIBUTES


=head2 HlsAkamaiSettings => MediaLive_HlsAkamaiSettings

  


=head2 HlsBasicPutSettings => MediaLive_HlsBasicPutSettings

  


=head2 HlsMediaStoreSettings => MediaLive_HlsMediaStoreSettings

  


=head2 HlsWebdavSettings => MediaLive_HlsWebdavSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

