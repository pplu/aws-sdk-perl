
package Paws::IoT::DescribeDimension;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDimension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dimensions/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeDimensionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeDimension - Arguments for method DescribeDimension on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDimension on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeDimension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDimension.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeDimensionResponse = $iot->DescribeDimension(
      Name => 'MyDimensionName',

    );

    # Results:
    my $Arn              = $DescribeDimensionResponse->Arn;
    my $CreationDate     = $DescribeDimensionResponse->CreationDate;
    my $LastModifiedDate = $DescribeDimensionResponse->LastModifiedDate;
    my $Name             = $DescribeDimensionResponse->Name;
    my $StringValues     = $DescribeDimensionResponse->StringValues;
    my $Type             = $DescribeDimensionResponse->Type;

    # Returns a L<Paws::IoT::DescribeDimensionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeDimension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The unique identifier for the dimension.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDimension in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

