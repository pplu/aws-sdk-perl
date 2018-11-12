package Paws::Kinesis::ProvisionedThroughputExceededException;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ProvisionedThroughputExceededException

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::ProvisionedThroughputExceededException object:

  $service_obj->Method(Att1 => { Message => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::ProvisionedThroughputExceededException object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

The request rate for the stream is too high, or the requested data is
too large for the available throughput. Reduce the frequency or size of
your requests. For more information, see Streams Limits
(http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
in the I<Amazon Kinesis Data Streams Developer Guide>, and Error
Retries and Exponential Backoff in AWS
(http://docs.aws.amazon.com/general/latest/gr/api-retries.html) in the
I<AWS General Reference>.

=head1 ATTRIBUTES


=head2 Message => Str

  A message that provides information about the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

