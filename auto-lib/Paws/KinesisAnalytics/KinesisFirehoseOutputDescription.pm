package Paws::KinesisAnalytics::KinesisFirehoseOutputDescription;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::KinesisFirehoseOutputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::KinesisFirehoseOutputDescription object:

  $service_obj->Method(Att1 => { ResourceARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::KinesisFirehoseOutputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARN

=head1 DESCRIPTION

For an application output, describes the Amazon Kinesis Firehose
delivery stream configured as its destination.

=head1 ATTRIBUTES


=head2 ResourceARN => Str

  Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
stream.


=head2 RoleARN => Str

  ARN of the IAM role that Amazon Kinesis Analytics can assume to access
the stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

