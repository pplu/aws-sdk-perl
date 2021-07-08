
package Paws::SageMaker::DescribeModelPackageGroupOutput;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageGroupDescription => (is => 'ro', isa => 'Str');
  has ModelPackageGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageGroupStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackageGroupOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

The time that the model group was created.


=head2 B<REQUIRED> ModelPackageGroupArn => Str

The Amazon Resource Name (ARN) of the model group.


=head2 ModelPackageGroupDescription => Str

A description of the model group.


=head2 B<REQUIRED> ModelPackageGroupName => Str

The name of the model group.


=head2 B<REQUIRED> ModelPackageGroupStatus => Str

The status of the model group.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">, C<"DeleteFailed">
=head2 _request_id => Str


=cut

1;