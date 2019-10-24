# Generated from json/callresult_class.tt

package Paws::ECR::GetLifecyclePolicyPreviewResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_LifecyclePolicyPreviewResult ECR_LifecyclePolicyPreviewSummary/;
  has LifecyclePolicyText => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has PreviewResults => (is => 'ro', isa => ArrayRef[ECR_LifecyclePolicyPreviewResult]);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Summary => (is => 'ro', isa => ECR_LifecyclePolicyPreviewSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               'Summary' => {
                              'class' => 'Paws::ECR::LifecyclePolicyPreviewSummary',
                              'type' => 'ECR_LifecyclePolicyPreviewSummary'
                            },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'PreviewResults' => {
                                     'class' => 'Paws::ECR::LifecyclePolicyPreviewResult',
                                     'type' => 'ArrayRef[ECR_LifecyclePolicyPreviewResult]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LifecyclePolicyText' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'PreviewResults' => 'previewResults',
                       'NextToken' => 'nextToken',
                       'Status' => 'status',
                       'Summary' => 'summary',
                       'LifecyclePolicyText' => 'lifecyclePolicyText',
                       'RepositoryName' => 'repositoryName'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetLifecyclePolicyPreviewResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyText => Str

The JSON lifecycle policy text.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<GetLifecyclePolicyPreview> request. When the results of a
C<GetLifecyclePolicyPreview> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 PreviewResults => ArrayRef[ECR_LifecyclePolicyPreviewResult]

The results of the lifecycle policy preview request.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 Status => Str

The status of the lifecycle policy preview request.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"EXPIRED">, C<"FAILED">
=head2 Summary => ECR_LifecyclePolicyPreviewSummary

The list of images that is returned as a result of the action.


=head2 _request_id => Str


=cut

1;