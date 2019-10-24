# Generated from json/callargs_class.tt

package Paws::DirectConnect::CreateInterconnect;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag/;
  has Bandwidth => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InterconnectName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LagId => (is => 'ro', isa => Str, predicate => 1);
  has Location => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInterconnect');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::Interconnect');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Bandwidth' => {
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
                             },
               'InterconnectName' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Bandwidth' => 'bandwidth',
                       'LagId' => 'lagId',
                       'Tags' => 'tags',
                       'Location' => 'location',
                       'InterconnectName' => 'interconnectName'
                     },
  'IsRequired' => {
                    'Bandwidth' => 1,
                    'Location' => 1,
                    'InterconnectName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateInterconnect - Arguments for method CreateInterconnect on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInterconnect on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateInterconnect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInterconnect.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Interconnect = $directconnect->CreateInterconnect(
      Bandwidth        => 'MyBandwidth',
      InterconnectName => 'MyInterconnectName',
      Location         => 'MyLocationCode',
      LagId            => 'MyLagId',              # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',                    # min: 1, max: 128
          Value => 'MyTagValue',                  # max: 256; OPTIONAL
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $AwsDevice            = $Interconnect->AwsDevice;
    my $AwsDeviceV2          = $Interconnect->AwsDeviceV2;
    my $Bandwidth            = $Interconnect->Bandwidth;
    my $HasLogicalRedundancy = $Interconnect->HasLogicalRedundancy;
    my $InterconnectId       = $Interconnect->InterconnectId;
    my $InterconnectName     = $Interconnect->InterconnectName;
    my $InterconnectState    = $Interconnect->InterconnectState;
    my $JumboFrameCapable    = $Interconnect->JumboFrameCapable;
    my $LagId                = $Interconnect->LagId;
    my $LoaIssueTime         = $Interconnect->LoaIssueTime;
    my $Location             = $Interconnect->Location;
    my $Region               = $Interconnect->Region;
    my $Tags                 = $Interconnect->Tags;

    # Returns a L<Paws::DirectConnect::Interconnect> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateInterconnect>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => Str

The port bandwidth, in Gbps. The possible values are 1 and 10.



=head2 B<REQUIRED> InterconnectName => Str

The name of the interconnect.



=head2 LagId => Str

The ID of the LAG.



=head2 B<REQUIRED> Location => Str

The location of the interconnect.



=head2 Tags => ArrayRef[DirectConnect_Tag]

The tags to assign to the interconnect,




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInterconnect in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

