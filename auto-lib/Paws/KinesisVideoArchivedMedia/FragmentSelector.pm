package Paws::KinesisVideoArchivedMedia::FragmentSelector;
  use Moose;
  has FragmentSelectorType => (is => 'ro', isa => 'Str', required => 1);
  has TimestampRange => (is => 'ro', isa => 'Paws::KinesisVideoArchivedMedia::TimestampRange', required => 1);
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

Describes the time stamp range and time stamp origin of a range of
fragments.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FragmentSelectorType => Str

  The origin of the time stamps to use (Server or Producer).


=head2 B<REQUIRED> TimestampRange => L<Paws::KinesisVideoArchivedMedia::TimestampRange>

  The range of time stamps to return.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

