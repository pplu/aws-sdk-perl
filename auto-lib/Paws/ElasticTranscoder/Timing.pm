package Paws::ElasticTranscoder::Timing;
  use Moose;
  has FinishTimeMillis => (is => 'ro', isa => 'Int');
  has StartTimeMillis => (is => 'ro', isa => 'Int');
  has SubmitTimeMillis => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Timing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Timing object:

  $service_obj->Method(Att1 => { FinishTimeMillis => $value, ..., SubmitTimeMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Timing object:

  $result = $service_obj->Method(...);
  $result->Att1->FinishTimeMillis

=head1 DESCRIPTION

Details about the timing of a job.

=head1 ATTRIBUTES


=head2 FinishTimeMillis => Int

  The time the job finished transcoding, in epoch milliseconds.


=head2 StartTimeMillis => Int

  The time the job began transcoding, in epoch milliseconds.


=head2 SubmitTimeMillis => Int

  The time the job was submitted to Elastic Transcoder, in epoch
milliseconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

