
package Paws::DirectConnect::UpdateConnection;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionName' );
  has EncryptionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionMode' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connection');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::UpdateConnection - Arguments for method UpdateConnection on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnection on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method UpdateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnection.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Connection = $directconnect->UpdateConnection(
      ConnectionId   => 'MyConnectionId',
      ConnectionName => 'MyConnectionName',    # OPTIONAL
      EncryptionMode => 'MyEncryptionMode',    # OPTIONAL
    );

    # Results:
    my $AwsDevice            = $Connection->AwsDevice;
    my $AwsDeviceV2          = $Connection->AwsDeviceV2;
    my $Bandwidth            = $Connection->Bandwidth;
    my $ConnectionId         = $Connection->ConnectionId;
    my $ConnectionName       = $Connection->ConnectionName;
    my $ConnectionState      = $Connection->ConnectionState;
    my $EncryptionMode       = $Connection->EncryptionMode;
    my $HasLogicalRedundancy = $Connection->HasLogicalRedundancy;
    my $JumboFrameCapable    = $Connection->JumboFrameCapable;
    my $LagId                = $Connection->LagId;
    my $LoaIssueTime         = $Connection->LoaIssueTime;
    my $Location             = $Connection->Location;
    my $MacSecCapable        = $Connection->MacSecCapable;
    my $MacSecKeys           = $Connection->MacSecKeys;
    my $OwnerAccount         = $Connection->OwnerAccount;
    my $PartnerName          = $Connection->PartnerName;
    my $PortEncryptionStatus = $Connection->PortEncryptionStatus;
    my $ProviderName         = $Connection->ProviderName;
    my $Region               = $Connection->Region;
    my $Tags                 = $Connection->Tags;
    my $Vlan                 = $Connection->Vlan;

    # Returns a L<Paws::DirectConnect::Connection> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/UpdateConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the dedicated connection.

You can use DescribeConnections to retrieve the connection ID.



=head2 ConnectionName => Str

The name of the connection.



=head2 EncryptionMode => Str

The connection MAC Security (MACsec) encryption mode.

The valid values are C<no_encrypt>, C<should_encrypt>, and
C<must_encrypt>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnection in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

