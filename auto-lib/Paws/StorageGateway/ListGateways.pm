
package Paws::StorageGateway::ListGateways;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListGatewaysOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListGateways - Arguments for method ListGateways on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGateways on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method ListGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGateways.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To lists region specific gateways per AWS account
    # Lists gateways owned by an AWS account in a specified region as requested.
    # Results are sorted by gateway ARN up to a maximum of 100 gateways.
    my $ListGatewaysOutput = $storagegateway->ListGateways(
      {
        'Limit'  => 2,
        'Marker' => 1
      }
    );

    # Results:
    my $Gateways = $ListGatewaysOutput->Gateways;
    my $Marker   = $ListGatewaysOutput->Marker;

    # Returns a L<Paws::StorageGateway::ListGatewaysOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/ListGateways>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies that the list of gateways returned be limited to the
specified number of items.



=head2 Marker => Str

An opaque string that indicates the position at which to begin the
returned list of gateways.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGateways in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

