package Paws::EC2::EbsInstanceBlockDevice;
  use Moose;
  has AttachTime => (is => 'ro', isa => 'Str', request_name => 'attachTime', traits => ['NameInRequest']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EbsInstanceBlockDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EbsInstanceBlockDevice object:

  $service_obj->Method(Att1 => { AttachTime => $value, ..., VolumeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EbsInstanceBlockDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttachTime => Str

  The time stamp when the attachment initiated.


=head2 DeleteOnTermination => Bool

  Indicates whether the volume is deleted on instance termination.


=head2 Status => Str

  The attachment state.


=head2 VolumeId => Str

  The ID of the EBS volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
