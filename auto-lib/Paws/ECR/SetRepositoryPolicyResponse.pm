# Generated from json/callresult_class.tt

package Paws::ECR::SetRepositoryPolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has PolicyText => (is => 'ro', isa => Str);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyText' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'RegistryId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'RepositoryName' => 'repositoryName',
                       'PolicyText' => 'policyText'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::SetRepositoryPolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The JSON repository policy text applied to the repository.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;