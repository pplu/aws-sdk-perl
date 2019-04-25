
package Paws::S3::PutPublicAccessBlock;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3::PublicAccessBlockConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPublicAccessBlock');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?publicAccessBlock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutPublicAccessBlock - Arguments for method PutPublicAccessBlock on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPublicAccessBlock on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutPublicAccessBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPublicAccessBlock.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutPublicAccessBlock(
      Bucket                         => 'MyBucketName',
      PublicAccessBlockConfiguration => {
        BlockPublicAcls       => 1,    # OPTIONAL
        BlockPublicPolicy     => 1,    # OPTIONAL
        IgnorePublicAcls      => 1,    # OPTIONAL
        RestrictPublicBuckets => 1,    # OPTIONAL
      },
      ContentMD5 => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutPublicAccessBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the Amazon S3 bucket whose C<PublicAccessBlock>
configuration you want to set.



=head2 ContentMD5 => Str

The MD5 hash of the C<PutPublicAccessBlock> request body.



=head2 B<REQUIRED> PublicAccessBlockConfiguration => L<Paws::S3::PublicAccessBlockConfiguration>

The C<PublicAccessBlock> configuration that you want to apply to this
Amazon S3 bucket. You can enable the configuration options in any
combination. For more information about when Amazon S3 considers a
bucket or object public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status)
in the I<Amazon Simple Storage Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPublicAccessBlock in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

