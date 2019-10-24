package Paws::EC2::TransitGatewayVpcAttachment;
  use Moo;  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayVpcAttachmentOptions EC2_Tag/;
  has CreationTime => (is => 'ro', isa => Str);
  has Options => (is => 'ro', isa => EC2_TransitGatewayVpcAttachmentOptions);
  has State => (is => 'ro', isa => Str);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TransitGatewayAttachmentId => (is => 'ro', isa => Str);
  has TransitGatewayId => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);
  has VpcOwnerId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'TransitGatewayAttachmentId' => {
                                                 'type' => 'Str'
                                               },
               'Options' => {
                              'class' => 'Paws::EC2::TransitGatewayVpcAttachmentOptions',
                              'type' => 'EC2_TransitGatewayVpcAttachmentOptions'
                            },
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'State' => {
                            'type' => 'Str'
                          },
               'TransitGatewayId' => {
                                       'type' => 'Str'
                                     },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'VpcOwnerId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'TransitGatewayAttachmentId' => 'transitGatewayAttachmentId',
                       'Options' => 'options',
                       'SubnetIds' => 'subnetIds',
                       'State' => 'state',
                       'TransitGatewayId' => 'transitGatewayId',
                       'VpcId' => 'vpcId',
                       'Tags' => 'tagSet',
                       'VpcOwnerId' => 'vpcOwnerId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayVpcAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayVpcAttachment object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., VpcOwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayVpcAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation time.


=head2 Options => EC2_TransitGatewayVpcAttachmentOptions

  The VPC attachment options.


=head2 State => Str

  The state of the VPC attachment.


=head2 SubnetIds => ArrayRef[Str|Undef]

  The IDs of the subnets.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags for the VPC attachment.


=head2 TransitGatewayAttachmentId => Str

  The ID of the attachment.


=head2 TransitGatewayId => Str

  The ID of the transit gateway.


=head2 VpcId => Str

  The ID of the VPC.


=head2 VpcOwnerId => Str

  The ID of the AWS account that owns the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
