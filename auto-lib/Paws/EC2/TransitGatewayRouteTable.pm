package Paws::EC2::TransitGatewayRouteTable;
  use Moo;  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has CreationTime => (is => 'ro', isa => Str);
  has DefaultAssociationRouteTable => (is => 'ro', isa => Bool);
  has DefaultPropagationRouteTable => (is => 'ro', isa => Bool);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TransitGatewayId => (is => 'ro', isa => Str);
  has TransitGatewayRouteTableId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitGatewayId' => {
                                       'type' => 'Str'
                                     },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'TransitGatewayRouteTableId' => {
                                                 'type' => 'Str'
                                               },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'DefaultPropagationRouteTable' => {
                                                   'type' => 'Bool'
                                                 },
               'DefaultAssociationRouteTable' => {
                                                   'type' => 'Bool'
                                                 },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'TransitGatewayId' => 'transitGatewayId',
                       'CreationTime' => 'creationTime',
                       'TransitGatewayRouteTableId' => 'transitGatewayRouteTableId',
                       'Tags' => 'tagSet',
                       'DefaultPropagationRouteTable' => 'defaultPropagationRouteTable',
                       'DefaultAssociationRouteTable' => 'defaultAssociationRouteTable',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayRouteTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayRouteTable object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TransitGatewayRouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayRouteTable object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation time.


=head2 DefaultAssociationRouteTable => Bool

  Indicates whether this is the default association route table for the
transit gateway.


=head2 DefaultPropagationRouteTable => Bool

  Indicates whether this is the default propagation route table for the
transit gateway.


=head2 State => Str

  The state of the transit gateway route table.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the route table.


=head2 TransitGatewayId => Str

  The ID of the transit gateway.


=head2 TransitGatewayRouteTableId => Str

  The ID of the transit gateway route table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
