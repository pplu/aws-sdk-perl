
package Paws::S3::GetObjectTorrent;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectTorrent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?torrent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectTorrentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectTorrent - Arguments for method GetObjectTorrent on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectTorrent on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObjectTorrent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectTorrent.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To retrieve torrent files for an object
    # The following example retrieves torrent files of an object.
    my $GetObjectTorrentOutput = $s3->GetObjectTorrent(
      'Bucket' => 'examplebucket',
      'Key'    => 'HappyFace.jpg'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObjectTorrent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the object for which to get the
torrent files.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 B<REQUIRED> Key => Str

The object key for which to get the information.



=head2 RequestPayer => Str



Valid values are: C<"requester">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectTorrent in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

