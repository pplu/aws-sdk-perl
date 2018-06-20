
package Paws::StorageGateway::DeleteTape;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTape');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DeleteTapeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteTape - Arguments for method DeleteTape on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTape on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DeleteTape.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTape.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To delete a virtual tape
    # This example deletes the specified virtual tape.
    my $DeleteTapeOutput = $storagegateway->DeleteTape(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:204469490176:gateway/sgw-12A3456B',
        'TapeARN' =>
          'arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0'
      }
    );

    # Results:
    my $TapeARN = $DeleteTapeOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::DeleteTapeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DeleteTape>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str

The unique Amazon Resource Name (ARN) of the gateway that the virtual
tape to delete is associated with. Use the ListGateways operation to
return a list of gateways for your account and region.



=head2 B<REQUIRED> TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTape in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

