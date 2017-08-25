package Paws::Firehose::KinesisStreamSourceDescription;
  use Moose;
  has DeliveryStartTimestamp => (is => 'ro', isa => 'Str');
  has KinesisStreamARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::KinesisStreamSourceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::KinesisStreamSourceDescription object:

  $service_obj->Method(Att1 => { DeliveryStartTimestamp => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::KinesisStreamSourceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStartTimestamp

=head1 DESCRIPTION

Details about a Kinesis stream used as the source for a Kinesis
Firehose delivery stream.

=head1 ATTRIBUTES


=head2 DeliveryStartTimestamp => Str

  Kinesis Firehose starts retrieving records from the Kinesis stream
starting with this time stamp.


=head2 KinesisStreamARN => Str

  The ARN of the source Kinesis stream.


=head2 RoleARN => Str

  The ARN of the role used by the source Kinesis stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

