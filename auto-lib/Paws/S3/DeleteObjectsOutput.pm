
package Paws::S3::DeleteObjectsOutput;
  use Moose;
  has Deleted => (is => 'ro', isa => 'ArrayRef[Paws::S3::DeletedObject]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::S3::Error]', request_name => 'Error', traits => ['NameInRequest']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectsOutput

=head1 ATTRIBUTES


=head2 Deleted => ArrayRef[L<Paws::S3::DeletedObject>]

Container element for a successful delete. It identifies the object
that was successfully deleted.



=head2 Errors => ArrayRef[L<Paws::S3::Error>]

Container for a failed delete action that describes the object that
Amazon S3 attempted to delete and the error it encountered.



=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

