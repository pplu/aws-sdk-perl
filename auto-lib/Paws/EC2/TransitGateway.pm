package Paws::EC2::TransitGateway;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayOptions EC2_Tag/;
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Options => (is => 'ro', isa => EC2_TransitGatewayOptions);
  has OwnerId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TransitGatewayArn => (is => 'ro', isa => Str);
  has TransitGatewayId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'OwnerId' => 'ownerId',
                       'State' => 'state',
                       'Tags' => 'tagSet',
                       'TransitGatewayArn' => 'transitGatewayArn',
                       'CreationTime' => 'creationTime',
                       'Options' => 'options',
                       'Description' => 'description',
                       'TransitGatewayId' => 'transitGatewayId'
                     },
  'types' => {
               'TransitGatewayId' => {
                                       'type' => 'Str'
                                     },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Options' => {
                              'type' => 'EC2_TransitGatewayOptions',
                              'class' => 'Paws::EC2::TransitGatewayOptions'
                            },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'TransitGatewayArn' => {
                                        'type' => 'Str'
                                      },
               'State' => {
                            'type' => 'Str'
                          },
               'OwnerId' => {
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

Paws::EC2::TransitGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGateway object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TransitGatewayId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation time.


=head2 Description => Str

  The description of the transit gateway.


=head2 Options => EC2_TransitGatewayOptions

  The transit gateway options.


=head2 OwnerId => Str

  The ID of the AWS account ID that owns the transit gateway.


=head2 State => Str

  The state of the transit gateway.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags for the transit gateway.


=head2 TransitGatewayArn => Str

  The Amazon Resource Name (ARN) of the transit gateway.


=head2 TransitGatewayId => Str

  The ID of the transit gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
