
package Paws::ElasticInference::DescribeAcceleratorOfferings;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'acceleratorTypes');
  has LocationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locationType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAcceleratorOfferings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-accelerator-offerings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticInference::DescribeAcceleratorOfferingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::DescribeAcceleratorOfferings - Arguments for method DescribeAcceleratorOfferings on L<Paws::ElasticInference>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAcceleratorOfferings on the
L<Amazon Elastic  Inference|Paws::ElasticInference> service. Use the attributes of this class
as arguments to method DescribeAcceleratorOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAcceleratorOfferings.

=head1 SYNOPSIS

    my $api.elastic-inference = Paws->service('ElasticInference');
    my $DescribeAcceleratorOfferingsResponse =
      $api . elastic-inference->DescribeAcceleratorOfferings(
      LocationType     => 'region',
      AcceleratorTypes => [
        'MyAcceleratorTypeName', ...    # min: 1, max: 256
      ],    # OPTIONAL
      );

    # Results:
    my $AcceleratorTypeOfferings =
      $DescribeAcceleratorOfferingsResponse->AcceleratorTypeOfferings;

# Returns a L<Paws::ElasticInference::DescribeAcceleratorOfferingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.elastic-inference/DescribeAcceleratorOfferings>

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

The list of accelerator types to describe.



=head2 B<REQUIRED> LocationType => Str

The location type that you want to describe accelerator type offerings
for. It can assume the following values: region: will return the
accelerator type offering at the regional level. availability-zone:
will return the accelerator type offering at the availability zone
level. availability-zone-id: will return the accelerator type offering
at the availability zone level returning the availability zone id.

Valid values are: C<"region">, C<"availability-zone">, C<"availability-zone-id">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAcceleratorOfferings in L<Paws::ElasticInference>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

