package Paws::StorageGateway::Tape;
  use Moose;
  has Progress => (is => 'ro', isa => 'Num');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Int');
  has TapeStatus => (is => 'ro', isa => 'Str');
  has VTLDevice => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::Tape

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::Tape object:

  $service_obj->Method(Att1 => { Progress => $value, ..., VTLDevice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::Tape object:

  $result = $service_obj->Method(...);
  $result->Att1->Progress

=head1 DESCRIPTION

Describes a virtual tape object.

=head1 ATTRIBUTES


=head2 Progress => Num

  For archiving virtual tapes, indicates how much data remains to be
uploaded before archiving is complete.

Range: 0 (not started) to 100 (complete).


=head2 TapeARN => Str

  The Amazon Resource Name (ARN) of the virtual tape.


=head2 TapeBarcode => Str

  The barcode that identifies a specific virtual tape.


=head2 TapeSizeInBytes => Int

  The size, in bytes, of the virtual tape.


=head2 TapeStatus => Str

  The current state of the virtual tape.


=head2 VTLDevice => Str

  The virtual tape library (VTL) device that the virtual tape is
associated with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

