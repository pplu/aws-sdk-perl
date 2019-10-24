# Generated from json/callresult_class.tt

package Paws::ECR::GetLifecyclePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has LastEvaluatedAt => (is => 'ro', isa => Str);
  has LifecyclePolicyText => (is => 'ro', isa => Str);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LifecyclePolicyText' => {
                                          'type' => 'Str'
                                        },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'LastEvaluatedAt' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'LifecyclePolicyText' => 'lifecyclePolicyText',
                       'RepositoryName' => 'repositoryName',
                       'LastEvaluatedAt' => 'lastEvaluatedAt'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LastEvaluatedAt => Str

The time stamp of the last time that the lifecycle policy was run.


=head2 LifecyclePolicyText => Str

The JSON lifecycle policy text.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;