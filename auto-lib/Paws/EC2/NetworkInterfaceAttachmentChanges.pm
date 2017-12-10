package Paws::EC2::NetworkInterfaceAttachmentChanges;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterfaceAttachmentChanges

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterfaceAttachmentChanges object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., DeleteOnTermination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterfaceAttachmentChanges object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttachmentId => Str

  The ID of the network interface attachment.


=head2 DeleteOnTermination => Bool

  Indicates whether the network interface is deleted when the instance is
terminated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
