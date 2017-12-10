package Paws::MachineLearning::DataSource;
  use Moose;
  has ComputeStatistics => (is => 'ro', isa => 'Bool');
  has ComputeTime => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedByIamUser => (is => 'ro', isa => 'Str');
  has DataLocationS3 => (is => 'ro', isa => 'Str');
  has DataRearrangement => (is => 'ro', isa => 'Str');
  has DataSizeInBytes => (is => 'ro', isa => 'Int');
  has DataSourceId => (is => 'ro', isa => 'Str');
  has FinishedAt => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfFiles => (is => 'ro', isa => 'Int');
  has RDSMetadata => (is => 'ro', isa => 'Paws::MachineLearning::RDSMetadata');
  has RedshiftMetadata => (is => 'ro', isa => 'Paws::MachineLearning::RedshiftMetadata');
  has RoleARN => (is => 'ro', isa => 'Str');
  has StartedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::DataSource object:

  $service_obj->Method(Att1 => { ComputeStatistics => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeStatistics

=head1 DESCRIPTION

Represents the output of the C<GetDataSource> operation.

The content consists of the detailed metadata and data file information
and the current status of the C<DataSource>.

=head1 ATTRIBUTES


=head2 ComputeStatistics => Bool

  The parameter is C<true> if statistics need to be generated from the
observation data.


=head2 ComputeTime => Int

  


=head2 CreatedAt => Str

  The time that the C<DataSource> was created. The time is expressed in
epoch time.


=head2 CreatedByIamUser => Str

  The AWS user account from which the C<DataSource> was created. The
account type can be either an AWS root account or an AWS Identity and
Access Management (IAM) user account.


=head2 DataLocationS3 => Str

  The location and name of the data in Amazon Simple Storage Service
(Amazon S3) that is used by a C<DataSource>.


=head2 DataRearrangement => Str

  A JSON string that represents the splitting and rearrangement
requirement used when this C<DataSource> was created.


=head2 DataSizeInBytes => Int

  The total number of observations contained in the data files that the
C<DataSource> references.


=head2 DataSourceId => Str

  The ID that is assigned to the C<DataSource> during creation.


=head2 FinishedAt => Str

  


=head2 LastUpdatedAt => Str

  The time of the most recent edit to the C<BatchPrediction>. The time is
expressed in epoch time.


=head2 Message => Str

  A description of the most recent details about creating the
C<DataSource>.


=head2 Name => Str

  A user-supplied name or description of the C<DataSource>.


=head2 NumberOfFiles => Int

  The number of data files referenced by the C<DataSource>.


=head2 RDSMetadata => L<Paws::MachineLearning::RDSMetadata>

  


=head2 RedshiftMetadata => L<Paws::MachineLearning::RedshiftMetadata>

  


=head2 RoleARN => Str

  


=head2 StartedAt => Str

  


=head2 Status => Str

  The current status of the C<DataSource>. This element can have one of
the following values:

=over

=item * PENDING - Amazon Machine Learning (Amazon ML) submitted a
request to create a C<DataSource>.

=item * INPROGRESS - The creation process is underway.

=item * FAILED - The request to create a C<DataSource> did not run to
completion. It is not usable.

=item * COMPLETED - The creation process completed successfully.

=item * DELETED - The C<DataSource> is marked as deleted. It is not
usable.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

