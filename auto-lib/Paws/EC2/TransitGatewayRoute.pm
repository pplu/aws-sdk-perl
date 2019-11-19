package Paws::EC2::TransitGatewayRoute;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRouteAttachment/;
  has DestinationCidrBlock => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has TransitGatewayAttachments => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayRouteAttachment]);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitGatewayAttachments' => {
                                                'type' => 'ArrayRef[EC2_TransitGatewayRouteAttachment]',
                                                'class' => 'Paws::EC2::TransitGatewayRouteAttachment'
                                              },
               'DestinationCidrBlock' => {
                                           'type' => 'Str'
                                         },
               'Type' => {
                           'type' => 'Str'
                         },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'TransitGatewayAttachments' => 'transitGatewayAttachments',
                       'DestinationCidrBlock' => 'destinationCidrBlock',
                       'Type' => 'type',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayRoute object:

  $service_obj->Method(Att1 => { DestinationCidrBlock => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

  The CIDR block used for destination matches.


=head2 State => Str

  The state of the route.


=head2 TransitGatewayAttachments => ArrayRef[EC2_TransitGatewayRouteAttachment]

  The attachments.


=head2 Type => Str

  The route type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
