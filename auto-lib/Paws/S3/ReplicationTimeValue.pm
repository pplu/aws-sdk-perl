package Paws::S3::ReplicationTimeValue;
  use Moose;
  has Minutes => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ReplicationTimeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ReplicationTimeValue object:

  $service_obj->Method(Att1 => { Minutes => $value, ..., Minutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ReplicationTimeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Minutes

=head1 DESCRIPTION

A container specifying the time value for S3 Replication Time Control
(S3 RTC) and replication metrics C<EventThreshold>.

=head1 ATTRIBUTES


=head2 Minutes => Int

  Contains an integer specifying time in minutes.

Valid values: 15 minutes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

