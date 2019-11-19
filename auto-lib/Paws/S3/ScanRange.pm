package Paws::S3::ScanRange;
  use Moose;
  has End => (is => 'ro', isa => 'Int');
  has Start => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ScanRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ScanRange object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ScanRange object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 End => Int

  Specifies the end of the byte range. This parameter is optional. Valid
values: non-negative integers. The default value is one less than the
size of the object being queried. If only the End parameter is
supplied, it is interpreted to mean scan the last N bytes of the file.
For example;
C<E<lt>scanrangeE<gt>E<lt>endE<gt>50E<lt>/endE<gt>E<lt>/scanrangeE<gt>>
means scan the last 50 bytes.


=head2 Start => Int

  Specifies the start of the byte range. This parameter is optional.
Valid values: non-negative integers. The default value is 0. If only
start is supplied, it means scan from that point to the end of the
file.For example;
C<E<lt>scanrangeE<gt>E<lt>startE<gt>50E<lt>/startE<gt>E<lt>/scanrangeE<gt>>
means scan from byte 50 until the end of the file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

