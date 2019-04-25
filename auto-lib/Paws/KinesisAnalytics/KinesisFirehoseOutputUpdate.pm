package Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate;
  use Moose;
  has ResourceARNUpdate => (is => 'ro', isa => 'Str');
  has RoleARNUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate object:

  $service_obj->Method(Att1 => { ResourceARNUpdate => $value, ..., RoleARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARNUpdate

=head1 DESCRIPTION

When updating an output configuration using the UpdateApplication
operation, provides information about an Amazon Kinesis Firehose
delivery stream configured as the destination.

=head1 ATTRIBUTES


=head2 ResourceARNUpdate => Str

  Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
stream to write to.


=head2 RoleARNUpdate => Str

  ARN of the IAM role that Amazon Kinesis Analytics can assume to access
the stream on your behalf. You need to grant the necessary permissions
to this role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

