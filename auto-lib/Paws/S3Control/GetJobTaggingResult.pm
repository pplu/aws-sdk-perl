
package Paws::S3Control::GetJobTaggingResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::S3Tag]');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetJobTaggingResult

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::S3Control::S3Tag>]

The set of tags associated with the S3 Batch Operations job.




=cut

