package Paws::EC2::RouteTable;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_RouteTableAssociation EC2_Tag EC2_PropagatingVgw EC2_Route/;
  has Associations => (is => 'ro', isa => ArrayRef[EC2_RouteTableAssociation]);
  has OwnerId => (is => 'ro', isa => Str);
  has PropagatingVgws => (is => 'ro', isa => ArrayRef[EC2_PropagatingVgw]);
  has Routes => (is => 'ro', isa => ArrayRef[EC2_Route]);
  has RouteTableId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tagSet',
                       'Associations' => 'associationSet',
                       'RouteTableId' => 'routeTableId',
                       'Routes' => 'routeSet',
                       'VpcId' => 'vpcId',
                       'OwnerId' => 'ownerId',
                       'PropagatingVgws' => 'propagatingVgwSet'
                     },
  'types' => {
               'Routes' => {
                             'class' => 'Paws::EC2::Route',
                             'type' => 'ArrayRef[EC2_Route]'
                           },
               'RouteTableId' => {
                                   'type' => 'Str'
                                 },
               'Associations' => {
                                   'class' => 'Paws::EC2::RouteTableAssociation',
                                   'type' => 'ArrayRef[EC2_RouteTableAssociation]'
                                 },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'PropagatingVgws' => {
                                      'class' => 'Paws::EC2::PropagatingVgw',
                                      'type' => 'ArrayRef[EC2_PropagatingVgw]'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteTable object:

  $service_obj->Method(Att1 => { Associations => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteTable object:

  $result = $service_obj->Method(...);
  $result->Att1->Associations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[EC2_RouteTableAssociation]

  The associations between the route table and one or more subnets.


=head2 OwnerId => Str

  The ID of the AWS account that owns the route table.


=head2 PropagatingVgws => ArrayRef[EC2_PropagatingVgw]

  Any virtual private gateway (VGW) propagating routes.


=head2 Routes => ArrayRef[EC2_Route]

  The routes in the route table.


=head2 RouteTableId => Str

  The ID of the route table.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the route table.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
