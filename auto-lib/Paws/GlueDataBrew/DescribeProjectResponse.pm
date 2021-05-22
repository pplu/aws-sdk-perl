
package Paws::GlueDataBrew::DescribeProjectResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OpenDate => (is => 'ro', isa => 'Str');
  has OpenedBy => (is => 'ro', isa => 'Str');
  has RecipeName => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Sample => (is => 'ro', isa => 'Paws::GlueDataBrew::Sample');
  has SessionStatus => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeProjectResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time that the project was created.


=head2 CreatedBy => Str

The identifier (user name) of the user who created the project.


=head2 DatasetName => Str

The dataset associated with the project.


=head2 LastModifiedBy => Str

The identifier (user name) of the user who last modified the project.


=head2 LastModifiedDate => Str

The date and time that the project was last modified.


=head2 B<REQUIRED> Name => Str

The name of the project.


=head2 OpenDate => Str

The date and time when the project was opened.


=head2 OpenedBy => Str

The identifier (user name) of the user that opened the project for use.


=head2 RecipeName => Str

The recipe associated with this job.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the project.


=head2 RoleArn => Str

The ARN of the AWS Identity and Access Management (IAM) role to be
assumed when DataBrew runs the job.


=head2 Sample => L<Paws::GlueDataBrew::Sample>




=head2 SessionStatus => Str

Describes the current state of the session:

=over

=item *

C<PROVISIONING> - allocating resources for the session.

=item *

C<INITIALIZING> - getting the session ready for first use.

=item *

C<ASSIGNED> - the session is ready for use.

=back


Valid values are: C<"ASSIGNED">, C<"FAILED">, C<"INITIALIZING">, C<"PROVISIONING">, C<"READY">, C<"RECYCLING">, C<"ROTATING">, C<"TERMINATED">, C<"TERMINATING">, C<"UPDATING">
=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags associated with this project.


=head2 _request_id => Str


=cut

