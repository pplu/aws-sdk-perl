# Generated from json/callresult_class.tt

package Paws::ECR::PutImageTagMutabilityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has ImageTagMutability => (is => 'ro', isa => Str);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'ImageTagMutability' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ImageTagMutability' => 'imageTagMutability',
                       'RegistryId' => 'registryId',
                       'RepositoryName' => 'repositoryName'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageTagMutabilityResponse

=head1 ATTRIBUTES


=head2 ImageTagMutability => Str

The image tag mutability setting for the repository.

Valid values are: C<"MUTABLE">, C<"IMMUTABLE">
=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;