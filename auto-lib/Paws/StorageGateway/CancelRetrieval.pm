
package Paws::StorageGateway::CancelRetrieval;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelRetrieval');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CancelRetrievalOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CancelRetrieval - Arguments for method CancelRetrieval on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelRetrieval on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CancelRetrieval.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelRetrieval.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To cancel virtual tape retrieval
    # Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a
    # gateway after the retrieval process is initiated.
    my $CancelRetrievalOutput = $storagegateway->CancelRetrieval(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
        'TapeARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4'
      }
    );

    # Results:
    my $TapeARN = $CancelRetrievalOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::CancelRetrievalOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CancelRetrieval>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape you want to cancel
retrieval for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelRetrieval in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

