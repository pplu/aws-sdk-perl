
package Paws::MediaConnect::DescribeOffering;
  use Moose;
  has OfferingArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'offeringArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOffering');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/offerings/{offeringArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::DescribeOfferingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeOffering - Arguments for method DescribeOffering on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOffering on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method DescribeOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOffering.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $DescribeOfferingResponse = $mediaconnect->DescribeOffering(
      OfferingArn => 'My__string',

    );

    # Results:
    my $Offering = $DescribeOfferingResponse->Offering;

    # Returns a L<Paws::MediaConnect::DescribeOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/DescribeOffering>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OfferingArn => Str

The Amazon Resource Name (ARN) of the offering.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOffering in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

