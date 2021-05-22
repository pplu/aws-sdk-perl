
package Paws::IoTSiteWise::CreateProjectResponse;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the project, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}>


=head2 B<REQUIRED> ProjectId => Str

The ID of the project.


=head2 _request_id => Str


=cut

