package Paws::KinesisVideoArchivedMedia::Fragment;
  use Moose;
  has FragmentLengthInMilliseconds => (is => 'ro', isa => 'Int');
  has FragmentNumber => (is => 'ro', isa => 'Str');
  has FragmentSizeInBytes => (is => 'ro', isa => 'Int');
  has ProducerTimestamp => (is => 'ro', isa => 'Str');
  has ServerTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::Fragment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoArchivedMedia::Fragment object:

  $service_obj->Method(Att1 => { FragmentLengthInMilliseconds => $value, ..., ServerTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoArchivedMedia::Fragment object:

  $result = $service_obj->Method(...);
  $result->Att1->FragmentLengthInMilliseconds

=head1 DESCRIPTION

Represents a segment of video or other time-delimited data.

=head1 ATTRIBUTES


=head2 FragmentLengthInMilliseconds => Int

  The playback duration or other time value associated with the fragment.


=head2 FragmentNumber => Str

  The index value of the fragment.


=head2 FragmentSizeInBytes => Int

  The total fragment size, including information about the fragment and
contained media data.


=head2 ProducerTimestamp => Str

  The time stamp from the producer corresponding to the fragment.


=head2 ServerTimestamp => Str

  The time stamp from the AWS server corresponding to the fragment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

