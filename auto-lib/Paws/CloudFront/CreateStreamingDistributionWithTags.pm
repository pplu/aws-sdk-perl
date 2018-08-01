
package Paws::CloudFront::CreateStreamingDistributionWithTags;
  use Moose;
  has StreamingDistributionConfigWithTags => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfigWithTags', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingDistributionWithTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/streaming-distribution?WithTags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateStreamingDistributionWithTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistributionWithTags - Arguments for method CreateStreamingDistributionWithTags on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingDistributionWithTags2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateStreamingDistributionWithTags2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingDistributionWithTags2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateStreamingDistributionWithTagsResult =
      $cloudfront->CreateStreamingDistributionWithTags(
      StreamingDistributionConfigWithTags => {
        StreamingDistributionConfig => {
          CallerReference => 'Mystring',
          S3Origin        => {
            OriginAccessIdentity => 'Mystring',
            DomainName           => 'Mystring',

          },
          TrustedSigners => {
            Quantity => 1,
            Enabled  => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },
          Enabled => 1,
          Comment => 'Mystring',
          Aliases => {
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
          Logging => {
            Bucket  => 'Mystring',
            Enabled => 1,
            Prefix  => 'Mystring',

          },    # OPTIONAL
          PriceClass => 'PriceClass_100'
          ,   # values: PriceClass_100, PriceClass_200, PriceClass_All; OPTIONAL
        },
        Tags => {
          Items => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256; OPTIONAL
            },
            ...
          ],                            # OPTIONAL
        },

      },

      );

    # Results:
    my $ETag = $CreateStreamingDistributionWithTagsResult->ETag;
    my $StreamingDistribution =
      $CreateStreamingDistributionWithTagsResult->StreamingDistribution;
    my $Location = $CreateStreamingDistributionWithTagsResult->Location;

# Returns a L<Paws::CloudFront::CreateStreamingDistributionWithTagsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateStreamingDistributionWithTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingDistributionConfigWithTags => L<Paws::CloudFront::StreamingDistributionConfigWithTags>

The streaming distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingDistributionWithTags2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

