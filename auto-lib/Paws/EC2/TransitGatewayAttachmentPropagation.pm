package Paws::EC2::TransitGatewayAttachmentPropagation;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has State => (is => 'ro', isa => Str);
  has TransitGatewayRouteTableId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitGatewayRouteTableId' => {
                                                 'type' => 'Str'
                                               },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'TransitGatewayRouteTableId' => 'transitGatewayRouteTableId',
                       'State' => 'state'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayAttachmentPropagation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayAttachmentPropagation object:

  $service_obj->Method(Att1 => { State => $value, ..., TransitGatewayRouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayAttachmentPropagation object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 State => Str

  The state of the propagation route table.


=head2 TransitGatewayRouteTableId => Str

  The ID of the propagation route table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
