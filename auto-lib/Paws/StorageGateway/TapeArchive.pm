package Paws::StorageGateway::TapeArchive;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has RetrievedTo => (is => 'ro', isa => 'Str');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeCreatedDate => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Int');
  has TapeStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::TapeArchive

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::TapeArchive object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., TapeStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::TapeArchive object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Represents a virtual tape that is archived in the virtual tape shelf
(VTS).

=head1 ATTRIBUTES


=head2 CompletionTime => Str

  The time that the archiving of the virtual tape was completed.

The string format of the completion time is in the ISO8601 extended
YYYY-MM-DD'T'HH:MM:SS'Z' format.


=head2 RetrievedTo => Str

  The Amazon Resource Name (ARN) of the tape gateway that the virtual
tape is being retrieved to.

The virtual tape is retrieved from the virtual tape shelf (VTS).


=head2 TapeARN => Str

  The Amazon Resource Name (ARN) of an archived virtual tape.


=head2 TapeBarcode => Str

  The barcode that identifies the archived virtual tape.


=head2 TapeCreatedDate => Str

  


=head2 TapeSizeInBytes => Int

  The size, in bytes, of the archived virtual tape.


=head2 TapeStatus => Str

  The current state of the archived virtual tape.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

