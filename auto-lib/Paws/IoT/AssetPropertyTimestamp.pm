package Paws::IoT::AssetPropertyTimestamp;
  use Moose;
  has OffsetInNanos => (is => 'ro', isa => 'Str', request_name => 'offsetInNanos', traits => ['NameInRequest']);
  has TimeInSeconds => (is => 'ro', isa => 'Str', request_name => 'timeInSeconds', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssetPropertyTimestamp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AssetPropertyTimestamp object:

  $service_obj->Method(Att1 => { OffsetInNanos => $value, ..., TimeInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AssetPropertyTimestamp object:

  $result = $service_obj->Method(...);
  $result->Att1->OffsetInNanos

=head1 DESCRIPTION

An asset property timestamp entry containing the following information.

=head1 ATTRIBUTES


=head2 OffsetInNanos => Str

  Optional. A string that contains the nanosecond time offset. Accepts
substitution templates.


=head2 B<REQUIRED> TimeInSeconds => Str

  A string that contains the time in seconds since epoch. Accepts
substitution templates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

