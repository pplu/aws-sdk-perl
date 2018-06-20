
package Paws::DirectConnect::AllocateHostedConnection;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' , required => 1);
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionName' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' , required => 1);
  has Vlan => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'vlan' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateHostedConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connection');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AllocateHostedConnection - Arguments for method AllocateHostedConnection on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateHostedConnection on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AllocateHostedConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateHostedConnection.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Connection = $directconnect->AllocateHostedConnection(
      Bandwidth      => 'MyBandwidth',
      ConnectionId   => 'MyConnectionId',
      ConnectionName => 'MyConnectionName',
      OwnerAccount   => 'MyOwnerAccount',
      Vlan           => 1,

    );

    # Results:
    my $AwsDevice       = $Connection->AwsDevice;
    my $Bandwidth       = $Connection->Bandwidth;
    my $ConnectionId    = $Connection->ConnectionId;
    my $ConnectionName  = $Connection->ConnectionName;
    my $ConnectionState = $Connection->ConnectionState;
    my $LagId           = $Connection->LagId;
    my $LoaIssueTime    = $Connection->LoaIssueTime;
    my $Location        = $Connection->Location;
    my $OwnerAccount    = $Connection->OwnerAccount;
    my $PartnerName     = $Connection->PartnerName;
    my $Region          = $Connection->Region;
    my $Vlan            = $Connection->Vlan;

    # Returns a L<Paws::DirectConnect::Connection> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AllocateHostedConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => Str

The bandwidth of the connection.

Example: C<500Mbps>

Default: None

Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps



=head2 B<REQUIRED> ConnectionId => Str

The ID of the interconnect or LAG on which the connection will be
provisioned.

Example: dxcon-456abc78 or dxlag-abc123

Default: None



=head2 B<REQUIRED> ConnectionName => Str

The name of the provisioned connection.

Example: "C<500M Connection to AWS>"

Default: None



=head2 B<REQUIRED> OwnerAccount => Str

The numeric account ID of the customer for whom the connection will be
provisioned.

Example: 123443215678

Default: None



=head2 B<REQUIRED> Vlan => Int

The dedicated VLAN provisioned to the hosted connection.

Example: 101

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateHostedConnection in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

