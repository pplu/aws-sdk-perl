
package Paws::CloudFront::GetStreamingDistribution;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamingDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/streaming-distribution/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetStreamingDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetStreamingDistribution - Arguments for method GetStreamingDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStreamingDistribution2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method GetStreamingDistribution2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStreamingDistribution2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $GetStreamingDistributionResult = $cloudfront->GetStreamingDistribution(
      Id => 'Mystring',

    );

    # Results:
    my $ETag = $GetStreamingDistributionResult->ETag;
    my $StreamingDistribution =
      $GetStreamingDistributionResult->StreamingDistribution;

    # Returns a L<Paws::CloudFront::GetStreamingDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/GetStreamingDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The streaming distribution's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStreamingDistribution2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

