
package Paws::Datasync::DescribeLocationS3Response;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has S3Config => (is => 'ro', isa => 'Paws::Datasync::S3Config');
  has S3StorageClass => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationS3Response

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

If you are using DataSync on an AWS Outpost, the Amazon Resource Name
(ARNs) of the EC2 agents deployed on your Outpost. For more information
about launching a DataSync agent on an AWS Outpost, see Deploy your
DataSync agent on AWS Outposts
(https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent).


=head2 CreationTime => Str

The time that the Amazon S3 bucket location was created.


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket or access point.


=head2 LocationUri => Str

The URL of the Amazon S3 location that was described.


=head2 S3Config => L<Paws::Datasync::S3Config>




=head2 S3StorageClass => Str

The Amazon S3 storage class that you chose to store your files in when
this location is used as a task destination. For more information about
S3 storage classes, see Amazon S3 Storage Classes
(http://aws.amazon.com/s3/storage-classes/). Some storage classes have
behaviors that can affect your S3 storage cost. For detailed
information, see Considerations when working with S3 storage classes in
DataSync
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes).

Valid values are: C<"STANDARD">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">
=head2 _request_id => Str


=cut

1;