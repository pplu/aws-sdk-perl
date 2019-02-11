
package Paws::CloudFront::ListStreamingDistributions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamingDistributions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/streaming-distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListStreamingDistributionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListStreamingDistributions - Arguments for method ListStreamingDistributions on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamingDistributions2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListStreamingDistributions2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamingDistributions2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListStreamingDistributionsResult =
      $cloudfront->ListStreamingDistributions(
      Marker   => 'Mystring',    # OPTIONAL
      MaxItems => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $StreamingDistributionList =
      $ListStreamingDistributionsResult->StreamingDistributionList;

    # Returns a L<Paws::CloudFront::ListStreamingDistributionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListStreamingDistributions>

=head1 ATTRIBUTES


=head2 Marker => Str

The value that you provided for the C<Marker> request parameter.



=head2 MaxItems => Str

The value that you provided for the C<MaxItems> request parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamingDistributions2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

