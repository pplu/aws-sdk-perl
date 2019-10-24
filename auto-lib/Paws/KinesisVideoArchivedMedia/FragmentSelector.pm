# Generated from default/object.tt
package Paws::KinesisVideoArchivedMedia::FragmentSelector;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideoArchivedMedia::Types qw/KinesisVideoArchivedMedia_TimestampRange/;
  has FragmentSelectorType => (is => 'ro', isa => Str, required => 1);
  has TimestampRange => (is => 'ro', isa => KinesisVideoArchivedMedia_TimestampRange, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimestampRange' => {
                                     'class' => 'Paws::KinesisVideoArchivedMedia::TimestampRange',
                                     'type' => 'KinesisVideoArchivedMedia_TimestampRange'
                                   },
               'FragmentSelectorType' => {
                                           'type' => 'Str'
                                         }
             },
  'IsRequired' => {
                    'TimestampRange' => 1,
                    'FragmentSelectorType' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::FragmentSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoArchivedMedia::FragmentSelector object:

  $service_obj->Method(Att1 => { FragmentSelectorType => $value, ..., TimestampRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoArchivedMedia::FragmentSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->FragmentSelectorType

=head1 DESCRIPTION

Describes the timestamp range and timestamp origin of a range of
fragments.

Only fragments with a start timestamp greater than or equal to the
given start time and less than or equal to the end time are returned.
For example, if a stream contains fragments with the following start
timestamps:

=over

=item *

00:00:00

=item *

00:00:02

=item *

00:00:04

=item *

00:00:06

=back

A fragment selector range with a start time of 00:00:01 and end time of
00:00:04 would return the fragments with start times of 00:00:02 and
00:00:04.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FragmentSelectorType => Str

  The origin of the timestamps to use (Server or Producer).


=head2 B<REQUIRED> TimestampRange => KinesisVideoArchivedMedia_TimestampRange

  The range of timestamps to return.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

