
package Paws::IoT::DescribeEndpoint;
  use Moose;
  has EndpointType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endpointType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeEndpoint - Arguments for method DescribeEndpoint on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpoint on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpoint.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeEndpointResponse = $iot->DescribeEndpoint(
      EndpointType => 'MyEndpointType',    # OPTIONAL
    );

    # Results:
    my $EndpointAddress = $DescribeEndpointResponse->EndpointAddress;

    # Returns a L<Paws::IoT::DescribeEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeEndpoint>

=head1 ATTRIBUTES


=head2 EndpointType => Str

The endpoint type. Valid endpoint types include:

=over

=item *

C<iot:Data> - Returns a VeriSign signed data endpoint.

=back

=over

=item *

C<iot:Data-ATS> - Returns an ATS signed data endpoint.

=back

=over

=item *

C<iot:CredentialProvider> - Returns an AWS IoT credentials provider API
endpoint.

=back

=over

=item *

C<iot:Jobs> - Returns an AWS IoT device management Jobs API endpoint.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpoint in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

