
package Paws::S3::DeleteObjectsOutput;
  use Moose;
  has Deleted => (is => 'ro', isa => 'ArrayRef[Paws::S3::DeletedObject]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::S3::Error]', traits => ['NameInRequest'], request_name => 'Error');
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectsOutput

=head1 ATTRIBUTES


=head2 Deleted => ArrayRef[L<Paws::S3::DeletedObject>]





=head2 Errors => ArrayRef[L<Paws::S3::Error>]





=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

