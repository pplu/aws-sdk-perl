# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeLocationS3Response;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw/Datasync_S3Config/;
  has CreationTime => (is => 'ro', isa => Str);
  has LocationArn => (is => 'ro', isa => Str);
  has LocationUri => (is => 'ro', isa => Str);
  has S3Config => (is => 'ro', isa => Datasync_S3Config);
  has S3StorageClass => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'S3StorageClass' => {
                                     'type' => 'Str'
                                   },
               'S3Config' => {
                               'type' => 'Datasync_S3Config',
                               'class' => 'Paws::Datasync::S3Config'
                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LocationUri' => {
                                  'type' => 'Str'
                                },
               'LocationArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationS3Response

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the Amazon S3 bucket location was created.


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket location.


=head2 LocationUri => Str

The URL of the Amazon S3 location that was described.


=head2 S3Config => Datasync_S3Config




=head2 S3StorageClass => Str

The Amazon S3 storage class that you chose to store your files in when
this location is used as a task destination. For more information about
S3 storage classes, see Amazon S3 Storage Classes
(https://aws.amazon.com/s3/storage-classes/) in the I<Amazon Simple
Storage Service Developer Guide>. Some storage classes have behaviors
that can affect your S3 storage cost. For detailed information, see
using-storage-classes.

Valid values are: C<"STANDARD">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">
=head2 _request_id => Str


=cut

1;