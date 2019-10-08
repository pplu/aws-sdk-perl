package Paws::EC2::CustomerGateway;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has BgpAsn => (is => 'ro', isa => Str);
  has CustomerGatewayId => (is => 'ro', isa => Str);
  has IpAddress => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has Type => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'CustomerGatewayId' => {
                                        'type' => 'Str'
                                      },
               'IpAddress' => {
                                'type' => 'Str'
                              },
               'BgpAsn' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'CustomerGatewayId' => 'customerGatewayId',
                       'IpAddress' => 'ipAddress',
                       'BgpAsn' => 'bgpAsn',
                       'Tags' => 'tagSet',
                       'State' => 'state'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CustomerGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CustomerGateway object:

  $service_obj->Method(Att1 => { BgpAsn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CustomerGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->BgpAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BgpAsn => Str

  The customer gateway's Border Gateway Protocol (BGP) Autonomous System
Number (ASN).


=head2 CustomerGatewayId => Str

  The ID of the customer gateway.


=head2 IpAddress => Str

  The Internet-routable IP address of the customer gateway's outside
interface.


=head2 State => Str

  The current state of the customer gateway (C<pending | available |
deleting | deleted>).


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the customer gateway.


=head2 Type => Str

  The type of VPN connection the customer gateway supports (C<ipsec.1>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
