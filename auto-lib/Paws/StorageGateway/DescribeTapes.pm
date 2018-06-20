
package Paws::StorageGateway::DescribeTapes;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeTapesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeTapes - Arguments for method DescribeTapes on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTapes on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeTapes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTapes.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe virtual tape(s) associated with gateway
    # Returns a description of the specified Amazon Resource Name (ARN) of
    # virtual tapes. If a TapeARN is not specified, returns a description of all
    # virtual tapes.
    my $DescribeTapesOutput = $storagegateway->DescribeTapes(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B',
        'Limit'    => 2,
        'Marker'   => 1,
        'TapeARNs' => [
          'arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1',
          'arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0'
        ]
      }
    );

    # Results:
    my $Marker = $DescribeTapesOutput->Marker;
    my $Tapes  = $DescribeTapesOutput->Tapes;

    # Returns a L<Paws::StorageGateway::DescribeTapesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeTapes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 Limit => Int

Specifies that the number of virtual tapes described be limited to the
specified number.

Amazon Web Services may impose its own limit, if this field is not set.



=head2 Marker => Str

A marker value, obtained in a previous call to C<DescribeTapes>. This
marker indicates which page of results to retrieve.

If not specified, the first page of results is retrieved.



=head2 TapeARNs => ArrayRef[Str|Undef]

Specifies one or more unique Amazon Resource Names (ARNs) that
represent the virtual tapes you want to describe. If this parameter is
not specified, Tape gateway returns a description of all virtual tapes
associated with the specified gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTapes in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

