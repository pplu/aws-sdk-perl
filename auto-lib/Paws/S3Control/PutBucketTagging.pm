
package Paws::S3Control::PutBucketTagging;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has Tagging => (is => 'ro', isa => 'Paws::S3Control::Tagging', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketTagging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/bucket/{name}/tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutBucketTagging - Arguments for method PutBucketTagging on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketTagging on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutBucketTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketTagging.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutBucketTagging(
      AccountId => 'MyAccountId',
      Bucket    => 'MyBucketName',
      Tagging   => {
        TagSet => [
          {
            Key   => 'MyTagKeyString',      # min: 1, max: 1024
            Value => 'MyTagValueString',    # max: 1024

          },
          ...
        ],

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutBucketTagging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID of the Outposts bucket.



=head2 B<REQUIRED> Bucket => Str

The Amazon Resource Name (ARN) of the bucket.

For using this parameter with Amazon S3 on Outposts with the REST API,
you must specify the name and the x-amz-outpost-id as well.

For using this parameter with S3 on Outposts with the AWS SDK and CLI,
you must specify the ARN of the bucket accessed in the format
C<arn:aws:s3-outposts:E<lt>RegionE<gt>:E<lt>account-idE<gt>:outpost/E<lt>outpost-idE<gt>/bucket/E<lt>my-bucket-nameE<gt>>.
For example, to access the bucket C<reports> through outpost
C<my-outpost> owned by account C<123456789012> in Region C<us-west-2>,
use the URL encoding of
C<arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports>.
The value must be URL encoded.



=head2 B<REQUIRED> Tagging => L<Paws::S3Control::Tagging>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketTagging in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

