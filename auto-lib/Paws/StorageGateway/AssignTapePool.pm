
package Paws::StorageGateway::AssignTapePool;
  use Moose;
  has PoolId => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignTapePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::AssignTapePoolOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AssignTapePool - Arguments for method AssignTapePool on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssignTapePool on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method AssignTapePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssignTapePool.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $AssignTapePoolOutput = $storagegateway->AssignTapePool(
      PoolId  => 'MyPoolId',
      TapeARN => 'MyTapeARN',

    );

    # Results:
    my $TapeARN = $AssignTapePoolOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::AssignTapePoolOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/AssignTapePool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolId => Str

The ID of the pool that you want to add your tape to for archiving. The
tape in this pool is archived in the S3 storage class that is
associated with the pool. When you use your backup application to eject
the tape, the tape is archived directly into the storage class (Glacier
or Deep Archive) that corresponds to the pool.

Valid values: "GLACIER", "DEEP_ARCHIVE"



=head2 B<REQUIRED> TapeARN => Str

The unique Amazon Resource Name (ARN) of the virtual tape that you want
to add to the tape pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssignTapePool in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

