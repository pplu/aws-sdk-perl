package Paws::EC2::InstanceNetworkInterfaceAttachment;
  use Moo;  use Types::Standard qw/Str Bool Int/;
  use Paws::EC2::Types qw//;
  has AttachmentId => (is => 'ro', isa => Str);
  has AttachTime => (is => 'ro', isa => Str);
  has DeleteOnTermination => (is => 'ro', isa => Bool);
  has DeviceIndex => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'DeleteOnTermination' => {
                                          'type' => 'Bool'
                                        },
               'AttachTime' => {
                                 'type' => 'Str'
                               },
               'AttachmentId' => {
                                   'type' => 'Str'
                                 },
               'DeviceIndex' => {
                                  'type' => 'Int'
                                }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'DeleteOnTermination' => 'deleteOnTermination',
                       'AttachTime' => 'attachTime',
                       'AttachmentId' => 'attachmentId',
                       'DeviceIndex' => 'deviceIndex'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterfaceAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterfaceAttachment object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterfaceAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttachmentId => Str

  The ID of the network interface attachment.


=head2 AttachTime => Str

  The time stamp when the attachment initiated.


=head2 DeleteOnTermination => Bool

  Indicates whether the network interface is deleted when the instance is
terminated.


=head2 DeviceIndex => Int

  The index of the device on the instance for the network interface
attachment.


=head2 Status => Str

  The attachment state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
