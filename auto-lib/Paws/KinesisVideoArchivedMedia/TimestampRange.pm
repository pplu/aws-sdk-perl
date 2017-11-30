package Paws::KinesisVideoArchivedMedia::TimestampRange;
  use Moose;
  has EndTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has StartTimestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::TimestampRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoArchivedMedia::TimestampRange object:

  $service_obj->Method(Att1 => { EndTimestamp => $value, ..., StartTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoArchivedMedia::TimestampRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTimestamp

=head1 DESCRIPTION

The range of time stamps for which to return fragments.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTimestamp => Str

  The ending time stamp in the range of time stamps for which to return
fragments.


=head2 B<REQUIRED> StartTimestamp => Str

  The starting time stamp in the range of time stamps for which to return
fragments.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

