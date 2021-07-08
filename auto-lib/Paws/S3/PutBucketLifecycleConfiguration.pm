
package Paws::S3::PutBucketLifecycleConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has LifecycleConfiguration => (is => 'ro', isa => 'Paws::S3::BucketLifecycleConfiguration', traits => ['ParamInBody']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycleConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?lifecycle');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketLifecycleConfiguration - Arguments for method PutBucketLifecycleConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLifecycleConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketLifecycleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLifecycleConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
   # Put bucket lifecycle
   # The following example replaces existing lifecycle configuration, if any, on
   # the specified bucket.
    $s3->PutBucketLifecycleConfiguration(
      'Bucket'                 => 'examplebucket',
      'LifecycleConfiguration' => {
        'Rules' => [

          {
            'Expiration' => {
              'Days' => 3650
            },
            'Filter' => {
              'Prefix' => 'documents/'
            },
            'ID'          => 'TestOnly',
            'Status'      => 'Enabled',
            'Transitions' => [

              {
                'Days'         => 365,
                'StorageClass' => 'GLACIER'
              }
            ]
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketLifecycleConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to set the configuration.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 LifecycleConfiguration => L<Paws::S3::BucketLifecycleConfiguration>

Container for lifecycle rules. You can add as many as 1,000 rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLifecycleConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

