# Generated from json/callargs_class.tt

package Paws::DirectConnect::CreateLag;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag/;
  has ChildConnectionTags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag], predicate => 1);
  has ConnectionId => (is => 'ro', isa => Str, predicate => 1);
  has ConnectionsBandwidth => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LagName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Location => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NumberOfConnections => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has ProviderName => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateLag');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::Lag');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProviderName' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'class' => 'Paws::DirectConnect::Tag',
                           'type' => 'ArrayRef[DirectConnect_Tag]'
                         },
               'LagName' => {
                              'type' => 'Str'
                            },
               'ConnectionId' => {
                                   'type' => 'Str'
                                 },
               'NumberOfConnections' => {
                                          'type' => 'Int'
                                        },
               'ChildConnectionTags' => {
                                          'class' => 'Paws::DirectConnect::Tag',
                                          'type' => 'ArrayRef[DirectConnect_Tag]'
                                        },
               'ConnectionsBandwidth' => {
                                           'type' => 'Str'
                                         },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Location' => 'location',
                       'NumberOfConnections' => 'numberOfConnections',
                       'ChildConnectionTags' => 'childConnectionTags',
                       'ConnectionsBandwidth' => 'connectionsBandwidth',
                       'ConnectionId' => 'connectionId',
                       'Tags' => 'tags',
                       'ProviderName' => 'providerName',
                       'LagName' => 'lagName'
                     },
  'IsRequired' => {
                    'ConnectionsBandwidth' => 1,
                    'NumberOfConnections' => 1,
                    'Location' => 1,
                    'LagName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateLag - Arguments for method CreateLag on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLag on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateLag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLag.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Lag = $directconnect->CreateLag(
      ConnectionsBandwidth => 'MyBandwidth',
      LagName              => 'MyLagName',
      Location             => 'MyLocationCode',
      NumberOfConnections  => 1,
      ChildConnectionTags  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      ConnectionId => 'MyConnectionId',    # OPTIONAL
      ProviderName => 'MyProviderName',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',             # min: 1, max: 128
          Value => 'MyTagValue',           # max: 256; OPTIONAL
        },
        ...
      ],                                   # OPTIONAL
    );

    # Results:
    my $AllowsHostedConnections = $Lag->AllowsHostedConnections;
    my $AwsDevice               = $Lag->AwsDevice;
    my $AwsDeviceV2             = $Lag->AwsDeviceV2;
    my $Connections             = $Lag->Connections;
    my $ConnectionsBandwidth    = $Lag->ConnectionsBandwidth;
    my $HasLogicalRedundancy    = $Lag->HasLogicalRedundancy;
    my $JumboFrameCapable       = $Lag->JumboFrameCapable;
    my $LagId                   = $Lag->LagId;
    my $LagName                 = $Lag->LagName;
    my $LagState                = $Lag->LagState;
    my $Location                = $Lag->Location;
    my $MinimumLinks            = $Lag->MinimumLinks;
    my $NumberOfConnections     = $Lag->NumberOfConnections;
    my $OwnerAccount            = $Lag->OwnerAccount;
    my $ProviderName            = $Lag->ProviderName;
    my $Region                  = $Lag->Region;
    my $Tags                    = $Lag->Tags;

    # Returns a L<Paws::DirectConnect::Lag> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateLag>

=head1 ATTRIBUTES


=head2 ChildConnectionTags => ArrayRef[DirectConnect_Tag]

The tags to associate with the automtically created LAGs.



=head2 ConnectionId => Str

The ID of an existing connection to migrate to the LAG.



=head2 B<REQUIRED> ConnectionsBandwidth => Str

The bandwidth of the individual physical connections bundled by the
LAG. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps,
400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps.



=head2 B<REQUIRED> LagName => Str

The name of the LAG.



=head2 B<REQUIRED> Location => Str

The location for the LAG.



=head2 B<REQUIRED> NumberOfConnections => Int

The number of physical connections initially provisioned and bundled by
the LAG.



=head2 ProviderName => Str

The name of the service provider associated with the LAG.



=head2 Tags => ArrayRef[DirectConnect_Tag]

The tags to associate with the LAG.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLag in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

