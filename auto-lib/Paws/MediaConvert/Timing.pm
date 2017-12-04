package Paws::MediaConvert::Timing;
  use Moose;
  has FinishTime => (is => 'ro', isa => 'Str', request_name => 'finishTime', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has SubmitTime => (is => 'ro', isa => 'Str', request_name => 'submitTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Timing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Timing object:

  $service_obj->Method(Att1 => { FinishTime => $value, ..., SubmitTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Timing object:

  $result = $service_obj->Method(...);
  $result->Att1->FinishTime

=head1 DESCRIPTION

Information about when jobs are submitted, started, and finished is
specified in Unix epoch format in seconds.

=head1 ATTRIBUTES


=head2 FinishTime => Str

  The time, in Unix epoch format, that the transcoding job finished


=head2 StartTime => Str

  The time, in Unix epoch format, that transcoding for the job began.


=head2 SubmitTime => Str

  The time, in Unix epoch format, that you submitted the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

