
package Paws::CloudFront::UpdateStreamingDistribution;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamingDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/streaming-distribution/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateStreamingDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateStreamingDistribution - Arguments for method UpdateStreamingDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStreamingDistribution2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateStreamingDistribution2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStreamingDistribution2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateStreamingDistributionResult =
      $cloudfront->UpdateStreamingDistribution(
      Id                          => 'Mystring',
      StreamingDistributionConfig => {
        CallerReference => 'Mystring',
        TrustedSigners  => {
          Quantity => 1,
          Enabled  => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },
        S3Origin => {
          DomainName           => 'Mystring',
          OriginAccessIdentity => 'Mystring',

        },
        Comment => 'Mystring',
        Enabled => 1,
        Aliases => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        PriceClass => 'PriceClass_100'
        ,     # values: PriceClass_100, PriceClass_200, PriceClass_All; OPTIONAL
        Logging => {
          Enabled => 1,
          Prefix  => 'Mystring',
          Bucket  => 'Mystring',

        },    # OPTIONAL
      },
      IfMatch => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $StreamingDistribution =
      $UpdateStreamingDistributionResult->StreamingDistribution;
    my $ETag = $UpdateStreamingDistributionResult->ETag;

    # Returns a L<Paws::CloudFront::UpdateStreamingDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateStreamingDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The streaming distribution's id.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
streaming distribution's configuration. For example: C<E2QWRUHAPOMQZL>.



=head2 B<REQUIRED> StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

The streaming distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStreamingDistribution2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

