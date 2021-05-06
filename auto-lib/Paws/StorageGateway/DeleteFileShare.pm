
package Paws::StorageGateway::DeleteFileShare;
  use Moose;
  has FileShareARN => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFileShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DeleteFileShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteFileShare - Arguments for method DeleteFileShare on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFileShare on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DeleteFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFileShare.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $DeleteFileShareOutput = $storagegateway->DeleteFileShare(
      FileShareARN => 'MyFileShareARN',
      ForceDelete  => 1,                  # OPTIONAL
    );

    # Results:
    my $FileShareARN = $DeleteFileShareOutput->FileShareARN;

    # Returns a L<Paws::StorageGateway::DeleteFileShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DeleteFileShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileShareARN => Str

The Amazon Resource Name (ARN) of the file share to be deleted.



=head2 ForceDelete => Bool

If this value is set to true, the operation deletes a file share
immediately and aborts all data uploads to AWS. Otherwise, the file
share is not deleted until all data is uploaded to AWS. This process
aborts the data upload process, and the file share enters the
FORCE_DELETING status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

