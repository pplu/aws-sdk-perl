
package Paws::S3Control::ListRegionalBuckets;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);
  has OutpostId => (is => 'ro', isa => 'Str', header_name => 'x-amz-outpost-id', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRegionalBuckets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/bucket');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListRegionalBucketsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListRegionalBuckets - Arguments for method ListRegionalBuckets on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRegionalBuckets on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListRegionalBuckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRegionalBuckets.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListRegionalBucketsResult = $s3 -control->ListRegionalBuckets(
      AccountId  => 'MyAccountId',
      MaxResults => 1,                                  # OPTIONAL
      NextToken  => 'MyNonEmptyMaxLength1024String',    # OPTIONAL
      OutpostId  => 'MyNonEmptyMaxLength64String',      # OPTIONAL
    );

    # Results:
    my $NextToken          = $ListRegionalBucketsResult->NextToken;
    my $RegionalBucketList = $ListRegionalBucketsResult->RegionalBucketList;

    # Returns a L<Paws::S3Control::ListRegionalBucketsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListRegionalBuckets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID of the Outposts bucket.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 OutpostId => Str

The ID of the AWS Outposts.

This is required by Amazon S3 on Outposts buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRegionalBuckets in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

