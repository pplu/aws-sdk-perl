package Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate;
  use Moose;
  has CloudWatchLoggingOptionId => (is => 'ro', isa => 'Str', required => 1);
  has LogStreamARNUpdate => (is => 'ro', isa => 'Str');
  has RoleARNUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate object:

  $service_obj->Method(Att1 => { CloudWatchLoggingOptionId => $value, ..., RoleARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLoggingOptionId

=head1 DESCRIPTION

Describes CloudWatch logging option updates.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchLoggingOptionId => Str

  ID of the CloudWatch logging option to update


=head2 LogStreamARNUpdate => Str

  ARN of the CloudWatch log to receive application messages.


=head2 RoleARNUpdate => Str

  IAM ARN of the role to use to send application messages. Note: To write
application messages to CloudWatch, the IAM role used must have the
C<PutLogEvents> policy action enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

