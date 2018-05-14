package Paws::Firehose::KinesisStreamSourceConfiguration;
  use Moose;
  has KinesisStreamARN => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::KinesisStreamSourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::KinesisStreamSourceConfiguration object:

  $service_obj->Method(Att1 => { KinesisStreamARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::KinesisStreamSourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->KinesisStreamARN

=head1 DESCRIPTION

The stream and role Amazon Resource Names (ARNs) for a Kinesis data
stream used as the source for a delivery stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> KinesisStreamARN => Str

  The ARN of the source Kinesis data stream. For more information, see
Amazon Kinesis Data Streams ARN Format
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams).


=head2 B<REQUIRED> RoleARN => Str

  The ARN of the role that provides access to the source Kinesis data
stream. For more information, see AWS Identity and Access Management
(IAM) ARN Format
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

