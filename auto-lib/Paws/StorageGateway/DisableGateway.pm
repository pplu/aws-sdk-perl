
package Paws::StorageGateway::DisableGateway;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DisableGatewayOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DisableGateway - Arguments for method DisableGateway on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableGateway on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DisableGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableGateway.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To disable a gateway when it is no longer functioning
    # Disables a gateway when the gateway is no longer functioning. Use this
    # operation for a gateway-VTL that is not reachable or not functioning.
    my $DisableGatewayOutput = $storagegateway->DisableGateway(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
    );

    # Results:
    my $GatewayARN = $DisableGatewayOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::DisableGatewayOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DisableGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableGateway in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

