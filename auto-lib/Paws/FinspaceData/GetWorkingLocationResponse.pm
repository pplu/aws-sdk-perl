
package Paws::FinspaceData::GetWorkingLocationResponse;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Bucket');
  has S3Path => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Path');
  has S3Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Uri');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetWorkingLocationResponse

=head1 ATTRIBUTES


=head2 S3Bucket => Str

Returns the Amazon S3 bucket name for the working location.


=head2 S3Path => Str

Returns the Amazon S3 Path for the working location.


=head2 S3Uri => Str

Returns the Amazon S3 URI for the working location.


=head2 _request_id => Str


=cut

