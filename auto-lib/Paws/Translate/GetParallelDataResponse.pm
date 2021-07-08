
package Paws::Translate::GetParallelDataResponse;
  use Moose;
  has AuxiliaryDataLocation => (is => 'ro', isa => 'Paws::Translate::ParallelDataDataLocation');
  has DataLocation => (is => 'ro', isa => 'Paws::Translate::ParallelDataDataLocation');
  has LatestUpdateAttemptAuxiliaryDataLocation => (is => 'ro', isa => 'Paws::Translate::ParallelDataDataLocation');
  has ParallelDataProperties => (is => 'ro', isa => 'Paws::Translate::ParallelDataProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::GetParallelDataResponse

=head1 ATTRIBUTES


=head2 AuxiliaryDataLocation => L<Paws::Translate::ParallelDataDataLocation>

The Amazon S3 location of a file that provides any errors or warnings
that were produced by your input file. This file was created when
Amazon Translate attempted to create a parallel data resource. The
location is returned as a presigned URL to that has a 30 minute
expiration.


=head2 DataLocation => L<Paws::Translate::ParallelDataDataLocation>

The location of the most recent parallel data input file that was
successfully imported into Amazon Translate. The location is returned
as a presigned URL that has a 30 minute expiration.


=head2 LatestUpdateAttemptAuxiliaryDataLocation => L<Paws::Translate::ParallelDataDataLocation>

The Amazon S3 location of a file that provides any errors or warnings
that were produced by your input file. This file was created when
Amazon Translate attempted to update a parallel data resource. The
location is returned as a presigned URL to that has a 30 minute
expiration.


=head2 ParallelDataProperties => L<Paws::Translate::ParallelDataProperties>

The properties of the parallel data resource that is being retrieved.


=head2 _request_id => Str


=cut

1;