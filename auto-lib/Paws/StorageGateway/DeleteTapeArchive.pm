
package Paws::StorageGateway::DeleteTapeArchive;
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DeleteTapeArchiveOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteTapeArchive - Arguments for method DeleteTapeArchive on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTapeArchive on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DeleteTapeArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTapeArchive.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To delete a virtual tape from the shelf (VTS)
    # Deletes the specified virtual tape from the virtual tape shelf (VTS).
    my $DeleteTapeArchiveOutput = $storagegateway->DeleteTapeArchive(
      {
        'TapeARN' =>
          'arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0'
      }
    );

    # Results:
    my $TapeARN = $DeleteTapeArchiveOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::DeleteTapeArchiveOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DeleteTapeArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape to delete from the
virtual tape shelf (VTS).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTapeArchive in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

