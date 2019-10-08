package Paws::EC2::EgressOnlyInternetGateway;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_InternetGatewayAttachment/;
  has Attachments => (is => 'ro', isa => ArrayRef[EC2_InternetGatewayAttachment]);
  has EgressOnlyInternetGatewayId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attachments' => {
                                  'class' => 'Paws::EC2::InternetGatewayAttachment',
                                  'type' => 'ArrayRef[EC2_InternetGatewayAttachment]'
                                },
               'EgressOnlyInternetGatewayId' => {
                                                  'type' => 'Str'
                                                }
             },
  'NameInRequest' => {
                       'Attachments' => 'attachmentSet',
                       'EgressOnlyInternetGatewayId' => 'egressOnlyInternetGatewayId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EgressOnlyInternetGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EgressOnlyInternetGateway object:

  $service_obj->Method(Att1 => { Attachments => $value, ..., EgressOnlyInternetGatewayId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EgressOnlyInternetGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->Attachments

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[EC2_InternetGatewayAttachment]

  Information about the attachment of the egress-only internet gateway.


=head2 EgressOnlyInternetGatewayId => Str

  The ID of the egress-only internet gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
