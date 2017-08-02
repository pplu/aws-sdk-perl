package Paws::SES::SNSDestination;
  use Moose;
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SNSDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::SNSDestination object:

  $service_obj->Method(Att1 => { TopicARN => $value, ..., TopicARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::SNSDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->TopicARN

=head1 DESCRIPTION

Contains the topic ARN associated with an Amazon Simple Notification
Service (Amazon SNS) event destination.

Event destinations, such as Amazon SNS, are associated with
configuration sets, which enable you to publish email sending events.
For information about using configuration sets, see the Amazon SES
Developer Guide.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TopicARN => Str

  The ARN of the Amazon SNS topic to which you want to publish email
sending events. An example of an Amazon SNS topic ARN is
arn:aws:sns:us-west-2:123456789012:MyTopic. For more information about
Amazon SNS topics, see the I<Amazon SNS Developer Guide> .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

