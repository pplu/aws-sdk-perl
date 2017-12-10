package Paws::KinesisAnalytics::KinesisStreamsInputUpdate;
  use Moose;
  has ResourceARNUpdate => (is => 'ro', isa => 'Str');
  has RoleARNUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::KinesisStreamsInputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::KinesisStreamsInputUpdate object:

  $service_obj->Method(Att1 => { ResourceARNUpdate => $value, ..., RoleARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::KinesisStreamsInputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARNUpdate

=head1 DESCRIPTION

When updating application input configuration, provides information
about an Amazon Kinesis stream as the streaming source.

=head1 ATTRIBUTES


=head2 ResourceARNUpdate => Str

  Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.


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

