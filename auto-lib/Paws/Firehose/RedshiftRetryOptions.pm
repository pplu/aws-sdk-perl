package Paws::Firehose::RedshiftRetryOptions;
  use Moose;
  has DurationInSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::RedshiftRetryOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::RedshiftRetryOptions object:

  $service_obj->Method(Att1 => { DurationInSeconds => $value, ..., DurationInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::RedshiftRetryOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInSeconds

=head1 DESCRIPTION

Configures retry behavior in case Kinesis Data Firehose is unable to
deliver documents to Amazon Redshift.

=head1 ATTRIBUTES


=head2 DurationInSeconds => Int

  The length of time during which Kinesis Data Firehose retries delivery
after a failure, starting from the initial request and including the
first attempt. The default value is 3600 seconds (60 minutes). Kinesis
Data Firehose does not retry if the value of C<DurationInSeconds> is 0
(zero) or if the first delivery attempt takes longer than the current
value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

