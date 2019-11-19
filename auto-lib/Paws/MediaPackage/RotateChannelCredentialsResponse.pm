
package Paws::MediaPackage::RotateChannelCredentialsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_HlsIngest MediaPackage_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has HlsIngest => (is => 'ro', isa => MediaPackage_HlsIngest);
  has Id => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaPackage_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::MediaPackage::Tags',
                           'type' => 'MediaPackage_Tags'
                         },
               'HlsIngest' => {
                                'type' => 'MediaPackage_HlsIngest',
                                'class' => 'Paws::MediaPackage::HlsIngest'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'Id' => 'id',
                       'Description' => 'description',
                       'Tags' => 'tags',
                       'HlsIngest' => 'hlsIngest'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::RotateChannelCredentialsResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the Channel.


=head2 Description => Str

A short text description of the Channel.


=head2 HlsIngest => MediaPackage_HlsIngest




=head2 Id => Str

The ID of the Channel.


=head2 Tags => MediaPackage_Tags




=head2 _request_id => Str


=cut

