# Generated from json/callargs_class.tt

package Paws::DirectConnect::CreateConnection;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag/;
  has Bandwidth => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ConnectionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LagId => (is => 'ro', isa => Str, predicate => 1);
  has Location => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateConnection');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::Connection');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Bandwidth' => {
                                'type' => 'Str'
                              },
               'ConnectionName' => {
                                     'type' => 'Str'
                                   },
               'LagId' => {
                            'type' => 'Str'
                          },
               'Tags' => {
                           'class' => 'Paws::DirectConnect::Tag',
                           'type' => 'ArrayRef[DirectConnect_Tag]'
                         },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Bandwidth' => 'bandwidth',
                       'ConnectionName' => 'connectionName',
                       'LagId' => 'lagId',
                       'Tags' => 'tags',
                       'Location' => 'location'
                     },
  'IsRequired' => {
                    'Bandwidth' => 1,
                    'ConnectionName' => 1,
                    'Location' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateConnection - Arguments for method CreateConnection on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Connection = $directconnect->CreateConnection(
      Bandwidth      => 'MyBandwidth',
      ConnectionName => 'MyConnectionName',
      Location       => 'MyLocationCode',
      LagId          => 'MyLagId',            # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',                # min: 1, max: 128
          Value => 'MyTagValue',              # max: 256; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $AwsDevice            = $Connection->AwsDevice;
    my $AwsDeviceV2          = $Connection->AwsDeviceV2;
    my $Bandwidth            = $Connection->Bandwidth;
    my $ConnectionId         = $Connection->ConnectionId;
    my $ConnectionName       = $Connection->ConnectionName;
    my $ConnectionState      = $Connection->ConnectionState;
    my $HasLogicalRedundancy = $Connection->HasLogicalRedundancy;
    my $JumboFrameCapable    = $Connection->JumboFrameCapable;
    my $LagId                = $Connection->LagId;
    my $LoaIssueTime         = $Connection->LoaIssueTime;
    my $Location             = $Connection->Location;
    my $OwnerAccount         = $Connection->OwnerAccount;
    my $PartnerName          = $Connection->PartnerName;
    my $Region               = $Connection->Region;
    my $Tags                 = $Connection->Tags;
    my $Vlan                 = $Connection->Vlan;

    # Returns a L<Paws::DirectConnect::Connection> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => Str

The bandwidth of the connection.



=head2 B<REQUIRED> ConnectionName => Str

The name of the connection.



=head2 LagId => Str

The ID of the LAG.



=head2 B<REQUIRED> Location => Str

The location of the connection.



=head2 Tags => ArrayRef[DirectConnect_Tag]

The tags to assign to the connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

