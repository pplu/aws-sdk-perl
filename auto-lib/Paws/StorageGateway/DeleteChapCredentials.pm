
package Paws::StorageGateway::DeleteChapCredentials;
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DeleteChapCredentialsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteChapCredentials - Arguments for method DeleteChapCredentials on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChapCredentials on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DeleteChapCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChapCredentials.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To delete CHAP credentials
    # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for
    # a specified iSCSI target and initiator pair.
    my $DeleteChapCredentialsOutput = $storagegateway->DeleteChapCredentials(
      {
        'InitiatorName' =>
          'iqn.1991-05.com.microsoft:computername.domain.example.com',
        'TargetARN' =>
'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume'
      }
    );

    # Results:
    my $InitiatorName = $DeleteChapCredentialsOutput->InitiatorName;
    my $TargetARN     = $DeleteChapCredentialsOutput->TargetARN;

    # Returns a L<Paws::StorageGateway::DeleteChapCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DeleteChapCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InitiatorName => Str

The iSCSI initiator that connects to the target.



=head2 B<REQUIRED> TargetARN => Str

The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
DescribeStorediSCSIVolumes operation to return to retrieve the
TargetARN for specified VolumeARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChapCredentials in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

