
package Paws::Macie::UpdateS3ResourcesResult;
  use Moose;
  has FailedS3Resources => (is => 'ro', isa => 'ArrayRef[Paws::Macie::FailedS3Resource]', traits => ['NameInRequest'], request_name => 'failedS3Resources' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Macie::UpdateS3ResourcesResult

=head1 ATTRIBUTES


=head2 FailedS3Resources => ArrayRef[L<Paws::Macie::FailedS3Resource>]

The S3 resources whose classification types can't be updated. An error
code and an error message are provided for each failed item.


=head2 _request_id => Str


=cut

1;