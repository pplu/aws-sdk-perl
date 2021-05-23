
package Paws::EMRContainers::StartJobRunResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualClusterId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::StartJobRunResponse

=head1 ATTRIBUTES


=head2 Arn => Str

This output lists the ARN of job run.


=head2 Id => Str

This output displays the started job run ID.


=head2 Name => Str

This output displays the name of the started job run.


=head2 VirtualClusterId => Str

This output displays the virtual cluster ID for which the job run was
submitted.


=head2 _request_id => Str


=cut

