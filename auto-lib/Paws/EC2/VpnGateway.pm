package Paws::EC2::VpnGateway;
  use Moo;  use Types::Standard qw/Int Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpcAttachment EC2_Tag/;
  has AmazonSideAsn => (is => 'ro', isa => Int);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has Type => (is => 'ro', isa => Str);
  has VpcAttachments => (is => 'ro', isa => ArrayRef[EC2_VpcAttachment]);
  has VpnGatewayId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VpnGatewayId' => 'vpnGatewayId',
                       'AvailabilityZone' => 'availabilityZone',
                       'Type' => 'type',
                       'AmazonSideAsn' => 'amazonSideAsn',
                       'Tags' => 'tagSet',
                       'VpcAttachments' => 'attachments',
                       'State' => 'state'
                     },
  'types' => {
               'VpcAttachments' => {
                                     'class' => 'Paws::EC2::VpcAttachment',
                                     'type' => 'ArrayRef[EC2_VpcAttachment]'
                                   },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'State' => {
                            'type' => 'Str'
                          },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'VpnGatewayId' => {
                                   'type' => 'Str'
                                 },
               'AmazonSideAsn' => {
                                    'type' => 'Int'
                                  },
               'Type' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnGateway object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., VpnGatewayId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

  The private Autonomous System Number (ASN) for the Amazon side of a BGP
session.


=head2 AvailabilityZone => Str

  The Availability Zone where the virtual private gateway was created, if
applicable. This field may be empty or not returned.


=head2 State => Str

  The current state of the virtual private gateway.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the virtual private gateway.


=head2 Type => Str

  The type of VPN connection the virtual private gateway supports.


=head2 VpcAttachments => ArrayRef[EC2_VpcAttachment]

  Any VPCs attached to the virtual private gateway.


=head2 VpnGatewayId => Str

  The ID of the virtual private gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
