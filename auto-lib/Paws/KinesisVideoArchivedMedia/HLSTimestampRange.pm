package Paws::KinesisVideoArchivedMedia::HLSTimestampRange;
  use Moose;
  has EndTimestamp => (is => 'ro', isa => 'Str');
  has StartTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::HLSTimestampRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoArchivedMedia::HLSTimestampRange object:

  $service_obj->Method(Att1 => { EndTimestamp => $value, ..., StartTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoArchivedMedia::HLSTimestampRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTimestamp

=head1 DESCRIPTION

The start and end of the time stamp range for the requested media.

This value should not be present if C<PlaybackType> is C<LIVE>.

The values in the C<HLSTimestampRange> are inclusive. Fragments that
begin before the start time but continue past it, or fragments that
begin before the end time but continue past it, are included in the
session.

=head1 ATTRIBUTES


=head2 EndTimestamp => Str

  The end of the time stamp range for the requested media. This value
must be within 3 hours of the specified C<StartTimestamp>, and it must
be later than the C<StartTimestamp> value.

If C<FragmentSelectorType> for the request is C<SERVER_TIMESTAMP>, this
value must be in the past.

If the C<HLSTimestampRange> value is specified, the C<EndTimestamp>
value is required.

This value is inclusive. The C<EndTimestamp> is compared to the
(starting) time stamp of the fragment. Fragments that start before the
C<EndTimestamp> value and continue past it are included in the session.


=head2 StartTimestamp => Str

  The start of the time stamp range for the requested media.

If the C<HLSTimestampRange> value is specified, the C<StartTimestamp>
value is required.

This value is inclusive. Fragments that start before the
C<StartTimestamp> and continue past it are included in the session. If
C<FragmentSelectorType> is C<SERVER_TIMESTAMP>, the C<StartTimestamp>
must be later than the stream head.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

