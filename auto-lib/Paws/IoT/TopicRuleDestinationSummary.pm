package Paws::IoT::TopicRuleDestinationSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has HttpUrlSummary => (is => 'ro', isa => 'Paws::IoT::HttpUrlDestinationSummary', request_name => 'httpUrlSummary', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TopicRuleDestinationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TopicRuleDestinationSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TopicRuleDestinationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about the topic rule destination.

=head1 ATTRIBUTES


=head2 Arn => Str

  The topic rule destination ARN.


=head2 HttpUrlSummary => L<Paws::IoT::HttpUrlDestinationSummary>

  Information about the HTTP URL.


=head2 Status => Str

  The status of the topic rule destination. Valid values are:

=over

=item IN_PROGRESS

A topic rule destination was created but has not been confirmed. You
can set C<status> to C<IN_PROGRESS> by calling
C<UpdateTopicRuleDestination>. Calling C<UpdateTopicRuleDestination>
causes a new confirmation challenge to be sent to your confirmation
endpoint.

=item ENABLED

Confirmation was completed, and traffic to this destination is allowed.
You can set C<status> to C<DISABLED> by calling
C<UpdateTopicRuleDestination>.

=item DISABLED

Confirmation was completed, and traffic to this destination is not
allowed. You can set C<status> to C<ENABLED> by calling
C<UpdateTopicRuleDestination>.

=item ERROR

Confirmation could not be completed, for example if the confirmation
timed out. You can call C<GetTopicRuleDestination> for details about
the error. You can set C<status> to C<IN_PROGRESS> by calling
C<UpdateTopicRuleDestination>. Calling C<UpdateTopicRuleDestination>
causes a new confirmation challenge to be sent to your confirmation
endpoint.

=back



=head2 StatusReason => Str

  The reason the topic rule destination is in the current status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

