
package Paws::Connect::DescribeHoursOfOperation;
  use Moose;
  has HoursOfOperationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHoursOfOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hours-of-operations/{InstanceId}/{HoursOfOperationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeHoursOfOperationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeHoursOfOperation - Arguments for method DescribeHoursOfOperation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHoursOfOperation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeHoursOfOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHoursOfOperation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeHoursOfOperationResponse = $connect->DescribeHoursOfOperation(
      HoursOfOperationId => 'MyHoursOfOperationId',
      InstanceId         => 'MyInstanceId',

    );

    # Results:
    my $HoursOfOperation = $DescribeHoursOfOperationResponse->HoursOfOperation;

    # Returns a L<Paws::Connect::DescribeHoursOfOperationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeHoursOfOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier for the hours of operation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHoursOfOperation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

