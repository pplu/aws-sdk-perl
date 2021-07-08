
package Paws::EC2::CreateStoreImageTaskResult;
  use Moose;
  has ObjectKey => (is => 'ro', isa => 'Str', request_name => 'objectKey', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateStoreImageTaskResult

=head1 ATTRIBUTES


=head2 ObjectKey => Str

The name of the stored AMI object in the S3 bucket.


=head2 _request_id => Str


=cut

