# Generated from json/callresult_class.tt

package Paws::ECR::UploadLayerPartResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ECR::Types qw//;
  has LastByteReceived => (is => 'ro', isa => Int);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);
  has UploadId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UploadId' => 'uploadId',
                       'RegistryId' => 'registryId',
                       'RepositoryName' => 'repositoryName',
                       'LastByteReceived' => 'lastByteReceived'
                     },
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'LastByteReceived' => {
                                       'type' => 'Int'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::UploadLayerPartResponse

=head1 ATTRIBUTES


=head2 LastByteReceived => Int

The integer value of the last byte received in the request.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 UploadId => Str

The upload ID associated with the request.


=head2 _request_id => Str


=cut

1;