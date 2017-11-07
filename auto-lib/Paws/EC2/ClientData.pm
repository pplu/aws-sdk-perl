package Paws::EC2::ClientData;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has UploadEnd => (is => 'ro', isa => 'Str');
  has UploadSize => (is => 'ro', isa => 'Num');
  has UploadStart => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientData object:

  $service_obj->Method(Att1 => { Comment => $value, ..., UploadStart => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientData object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Comment => Str

  A user-defined comment about the disk upload.


=head2 UploadEnd => Str

  The time that the disk upload ends.


=head2 UploadSize => Num

  The size of the uploaded disk image, in GiB.


=head2 UploadStart => Str

  The time that the disk upload starts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
