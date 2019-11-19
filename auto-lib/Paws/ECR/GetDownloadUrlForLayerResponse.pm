# Generated from json/callresult_class.tt

package Paws::ECR::GetDownloadUrlForLayerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has DownloadUrl => (is => 'ro', isa => Str);
  has LayerDigest => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DownloadUrl' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LayerDigest' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LayerDigest' => 'layerDigest',
                       'DownloadUrl' => 'downloadUrl'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetDownloadUrlForLayerResponse

=head1 ATTRIBUTES


=head2 DownloadUrl => Str

The pre-signed Amazon S3 download URL for the requested layer.


=head2 LayerDigest => Str

The digest of the image layer to download.


=head2 _request_id => Str


=cut

1;