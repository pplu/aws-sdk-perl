package Paws::Firehose::ElasticsearchRetryOptions;
  use Moose;
  has DurationInSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ElasticsearchRetryOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ElasticsearchRetryOptions object:

  $service_obj->Method(Att1 => { DurationInSeconds => $value, ..., DurationInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ElasticsearchRetryOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInSeconds

=head1 DESCRIPTION

Configures retry behavior in case Kinesis Data Firehose is unable to
deliver documents to Amazon ES.

=head1 ATTRIBUTES


=head2 DurationInSeconds => Int

  After an initial failure to deliver to Amazon ES, the total amount of
time during which Kinesis Data Firehose retries delivery (including the
first attempt). After this time has elapsed, the failed documents are
written to Amazon S3. Default value is 300 seconds (5 minutes). A value
of 0 (zero) results in no retries.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

