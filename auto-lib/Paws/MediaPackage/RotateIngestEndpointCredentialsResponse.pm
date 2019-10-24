
package Paws::MediaPackage::RotateIngestEndpointCredentialsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_Tags MediaPackage_HlsIngest/;
  has Arn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has HlsIngest => (is => 'ro', isa => MediaPackage_HlsIngest);
  has Id => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaPackage_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::MediaPackage::Tags',
                           'type' => 'MediaPackage_Tags'
                         },
               'HlsIngest' => {
                                'class' => 'Paws::MediaPackage::HlsIngest',
                                'type' => 'MediaPackage_HlsIngest'
                              },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'HlsIngest' => 'hlsIngest',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::RotateIngestEndpointCredentialsResponse

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

