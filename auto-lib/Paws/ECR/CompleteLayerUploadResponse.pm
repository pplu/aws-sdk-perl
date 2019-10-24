# Generated from json/callresult_class.tt

package Paws::ECR::CompleteLayerUploadResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has LayerDigest => (is => 'ro', isa => Str);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);
  has UploadId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'LayerDigest' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadId' => {
                               'type' => 'Str'
                             },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'LayerDigest' => 'layerDigest',
                       'UploadId' => 'uploadId',
                       'RepositoryName' => 'repositoryName'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::CompleteLayerUploadResponse

=head1 ATTRIBUTES


=head2 LayerDigest => Str

The C<sha256> digest of the image layer.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 UploadId => Str

The upload ID associated with the layer.


=head2 _request_id => Str


=cut

1;