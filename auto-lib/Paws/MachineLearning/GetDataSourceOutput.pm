
package Paws::MachineLearning::GetDataSourceOutput;
  use Moose;
  has ComputeStatistics => (is => 'ro', isa => 'Bool');
  has ComputeTime => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedByIamUser => (is => 'ro', isa => 'Str');
  has DataLocationS3 => (is => 'ro', isa => 'Str');
  has DataRearrangement => (is => 'ro', isa => 'Str');
  has DataSizeInBytes => (is => 'ro', isa => 'Int');
  has DataSourceId => (is => 'ro', isa => 'Str');
  has DataSourceSchema => (is => 'ro', isa => 'Str');
  has FinishedAt => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfFiles => (is => 'ro', isa => 'Int');
  has RDSMetadata => (is => 'ro', isa => 'Paws::MachineLearning::RDSMetadata');
  has RedshiftMetadata => (is => 'ro', isa => 'Paws::MachineLearning::RedshiftMetadata');
  has RoleARN => (is => 'ro', isa => 'Str');
  has StartedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::GetDataSourceOutput

=head1 ATTRIBUTES


=head2 ComputeStatistics => Bool

The parameter is C<true> if statistics need to be generated from the
observation data.


=head2 ComputeTime => Int

The approximate CPU time in milliseconds that Amazon Machine Learning
spent processing the C<DataSource>, normalized and scaled on
computation resources. C<ComputeTime> is only available if the
C<DataSource> is in the C<COMPLETED> state and the C<ComputeStatistics>
is set to true.


=head2 CreatedAt => Str

The time that the C<DataSource> was created. The time is expressed in
epoch time.


=head2 CreatedByIamUser => Str

The AWS user account from which the C<DataSource> was created. The
account type can be either an AWS root account or an AWS Identity and
Access Management (IAM) user account.


=head2 DataLocationS3 => Str

The location of the data file or directory in Amazon Simple Storage
Service (Amazon S3).


=head2 DataRearrangement => Str

A JSON string that represents the splitting and rearrangement
requirement used when this C<DataSource> was created.


=head2 DataSizeInBytes => Int

The total size of observations in the data files.


=head2 DataSourceId => Str

The ID assigned to the C<DataSource> at creation. This value should be
identical to the value of the C<DataSourceId> in the request.


=head2 DataSourceSchema => Str

The schema used by all of the data files of this C<DataSource>.

This parameter is provided as part of the verbose format.


=head2 FinishedAt => Str

The epoch time when Amazon Machine Learning marked the C<DataSource> as
C<COMPLETED> or C<FAILED>. C<FinishedAt> is only available when the
C<DataSource> is in the C<COMPLETED> or C<FAILED> state.


=head2 LastUpdatedAt => Str

The time of the most recent edit to the C<DataSource>. The time is
expressed in epoch time.


=head2 LogUri => Str

A link to the file containing logs of C<CreateDataSourceFrom*>
operations.


=head2 Message => Str

The user-supplied description of the most recent details about creating
the C<DataSource>.


=head2 Name => Str

A user-supplied name or description of the C<DataSource>.


=head2 NumberOfFiles => Int

The number of data files referenced by the C<DataSource>.


=head2 RDSMetadata => L<Paws::MachineLearning::RDSMetadata>




=head2 RedshiftMetadata => L<Paws::MachineLearning::RedshiftMetadata>




=head2 RoleARN => Str




=head2 StartedAt => Str

The epoch time when Amazon Machine Learning marked the C<DataSource> as
C<INPROGRESS>. C<StartedAt> isn't available if the C<DataSource> is in
the C<PENDING> state.


=head2 Status => Str

The current status of the C<DataSource>. This element can have one of
the following values:

=over

=item * C<PENDING> - Amazon ML submitted a request to create a
C<DataSource>.

=item * C<INPROGRESS> - The creation process is underway.

=item * C<FAILED> - The request to create a C<DataSource> did not run
to completion. It is not usable.

=item * C<COMPLETED> - The creation process completed successfully.

=item * C<DELETED> - The C<DataSource> is marked as deleted. It is not
usable.

=back


Valid values are: C<"PENDING">, C<"INPROGRESS">, C<"FAILED">, C<"COMPLETED">, C<"DELETED">
=head2 _request_id => Str


=cut

1;