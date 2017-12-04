package Paws::KinesisAnalytics::CloudWatchLoggingOption;
  use Moose;
  has LogStreamARN => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::CloudWatchLoggingOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::CloudWatchLoggingOption object:

  $service_obj->Method(Att1 => { LogStreamARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::CloudWatchLoggingOption object:

  $result = $service_obj->Method(...);
  $result->Att1->LogStreamARN

=head1 DESCRIPTION

Provides a description of CloudWatch logging options, including the log
stream Amazon Resource Name (ARN) and the role ARN.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogStreamARN => Str

  ARN of the CloudWatch log to receive application messages.


=head2 B<REQUIRED> RoleARN => Str

  IAM ARN of the role to use to send application messages. Note: To write
application messages to CloudWatch, the IAM role that is used must have
the C<PutLogEvents> policy action enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

