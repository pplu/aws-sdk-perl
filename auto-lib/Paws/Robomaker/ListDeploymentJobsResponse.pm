
package Paws::Robomaker::ListDeploymentJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_DeploymentJob/;
  has DeploymentJobs => (is => 'ro', isa => ArrayRef[Robomaker_DeploymentJob]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeploymentJobs' => {
                                     'class' => 'Paws::Robomaker::DeploymentJob',
                                     'type' => 'ArrayRef[Robomaker_DeploymentJob]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DeploymentJobs' => 'deploymentJobs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListDeploymentJobsResponse

=head1 ATTRIBUTES


=head2 DeploymentJobs => ArrayRef[Robomaker_DeploymentJob]

A list of deployment jobs that meet the criteria of the request.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListDeploymentJobs>
request. When the results of a C<ListDeploymentJobs> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

