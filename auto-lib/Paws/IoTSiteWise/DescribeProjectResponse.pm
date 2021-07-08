
package Paws::IoTSiteWise::DescribeProjectResponse;
  use Moose;
  has PortalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalId', required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn', required => 1);
  has ProjectCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectCreationDate', required => 1);
  has ProjectDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectDescription');
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has ProjectLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectLastUpdateDate', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalId => Str

The ID of the portal that the project is in.


=head2 B<REQUIRED> ProjectArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the project, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}>


=head2 B<REQUIRED> ProjectCreationDate => Str

The date the project was created, in Unix epoch time.


=head2 ProjectDescription => Str

The project's description.


=head2 B<REQUIRED> ProjectId => Str

The ID of the project.


=head2 B<REQUIRED> ProjectLastUpdateDate => Str

The date the project was last updated, in Unix epoch time.


=head2 B<REQUIRED> ProjectName => Str

The name of the project.


=head2 _request_id => Str


=cut

