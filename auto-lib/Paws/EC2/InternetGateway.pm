package Paws::EC2::InternetGateway;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_InternetGatewayAttachment EC2_Tag/;
  has Attachments => (is => 'ro', isa => ArrayRef[EC2_InternetGatewayAttachment]);
  has InternetGatewayId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attachments' => {
                                  'class' => 'Paws::EC2::InternetGatewayAttachment',
                                  'type' => 'ArrayRef[EC2_InternetGatewayAttachment]'
                                },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'InternetGatewayId' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'Attachments' => 'attachmentSet',
                       'Tags' => 'tagSet',
                       'OwnerId' => 'ownerId',
                       'InternetGatewayId' => 'internetGatewayId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InternetGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InternetGateway object:

  $service_obj->Method(Att1 => { Attachments => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InternetGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->Attachments

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[EC2_InternetGatewayAttachment]

  Any VPCs attached to the internet gateway.


=head2 InternetGatewayId => Str

  The ID of the internet gateway.


=head2 OwnerId => Str

  The ID of the AWS account that owns the internet gateway.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the internet gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
