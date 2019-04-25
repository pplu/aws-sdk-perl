package Paws::StorageGateway::TapeRecoveryPointInfo;
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Int');
  has TapeStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::TapeRecoveryPointInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::TapeRecoveryPointInfo object:

  $service_obj->Method(Att1 => { TapeARN => $value, ..., TapeStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::TapeRecoveryPointInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->TapeARN

=head1 DESCRIPTION

Describes a recovery point.

=head1 ATTRIBUTES


=head2 TapeARN => Str

  The Amazon Resource Name (ARN) of the virtual tape.


=head2 TapeRecoveryPointTime => Str

  The time when the point-in-time view of the virtual tape was replicated
for later recovery.

The default time stamp format of the tape recovery point time is in the
ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.


=head2 TapeSizeInBytes => Int

  The size, in bytes, of the virtual tapes to recover.


=head2 TapeStatus => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

