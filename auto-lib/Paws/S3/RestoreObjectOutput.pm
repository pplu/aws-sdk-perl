
package Paws::S3::RestoreObjectOutput;
  use Moose;
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has RestoreOutputPath => (is => 'ro', isa => 'Str', header_name => 'x-amz-restore-output-path', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreObjectOutput

=head1 ATTRIBUTES


=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 RestoreOutputPath => Str

Indicates the path in the provided S3 output location where Select
results will be restored to.




=cut

