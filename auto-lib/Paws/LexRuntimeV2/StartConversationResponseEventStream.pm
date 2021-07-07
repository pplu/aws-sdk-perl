# Generated by default/object.tt
package Paws::LexRuntimeV2::StartConversationResponseEventStream;
  use Moose;
  has AccessDeniedException => (is => 'ro', isa => 'Paws::LexRuntimeV2::AccessDeniedException');
  has AudioResponseEvent => (is => 'ro', isa => 'Paws::LexRuntimeV2::AudioResponseEvent');
  has BadGatewayException => (is => 'ro', isa => 'Paws::LexRuntimeV2::BadGatewayException');
  has ConflictException => (is => 'ro', isa => 'Paws::LexRuntimeV2::ConflictException');
  has DependencyFailedException => (is => 'ro', isa => 'Paws::LexRuntimeV2::DependencyFailedException');
  has HeartbeatEvent => (is => 'ro', isa => 'Paws::LexRuntimeV2::HeartbeatEvent');
  has IntentResultEvent => (is => 'ro', isa => 'Paws::LexRuntimeV2::IntentResultEvent');
  has InternalServerException => (is => 'ro', isa => 'Paws::LexRuntimeV2::InternalServerException');
  has PlaybackInterruptionEvent => (is => 'ro', isa => 'Paws::LexRuntimeV2::PlaybackInterruptionEvent');
  has ResourceNotFoundException => (is => 'ro', isa => 'Paws::LexRuntimeV2::ResourceNotFoundException');
  has TextResponseEvent => (is => 'ro', isa => 'Paws::LexRuntimeV2::TextResponseEvent');
  has ThrottlingException => (is => 'ro', isa => 'Paws::LexRuntimeV2::ThrottlingException');
  has TranscriptEvent => (is => 'ro', isa => 'Paws::LexRuntimeV2::TranscriptEvent');
  has ValidationException => (is => 'ro', isa => 'Paws::LexRuntimeV2::ValidationException');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::StartConversationResponseEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntimeV2::StartConversationResponseEventStream object:

  $service_obj->Method(Att1 => { AccessDeniedException => $value, ..., ValidationException => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntimeV2::StartConversationResponseEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessDeniedException

=head1 DESCRIPTION

Represents a stream of events between Amazon Lex V2 and your
application.

=head1 ATTRIBUTES


=head2 AccessDeniedException => L<Paws::LexRuntimeV2::AccessDeniedException>

Exception thrown when the credentials passed with the request are
invalid or expired. Also thrown when the credentials in the request do
not have permission to access the C<StartConversation> operation.


=head2 AudioResponseEvent => L<Paws::LexRuntimeV2::AudioResponseEvent>




=head2 BadGatewayException => L<Paws::LexRuntimeV2::BadGatewayException>




=head2 ConflictException => L<Paws::LexRuntimeV2::ConflictException>

Exception thrown when two clients are using the same AWS account,
Amazon Lex V2 bot, and session ID.


=head2 DependencyFailedException => L<Paws::LexRuntimeV2::DependencyFailedException>




=head2 HeartbeatEvent => L<Paws::LexRuntimeV2::HeartbeatEvent>




=head2 IntentResultEvent => L<Paws::LexRuntimeV2::IntentResultEvent>

Event sent from Amazon Lex V2 to the client application containing the
current state of the conversation between the user and Amazon Lex V2.


=head2 InternalServerException => L<Paws::LexRuntimeV2::InternalServerException>

An error occurred with Amazon Lex V2.


=head2 PlaybackInterruptionEvent => L<Paws::LexRuntimeV2::PlaybackInterruptionEvent>




=head2 ResourceNotFoundException => L<Paws::LexRuntimeV2::ResourceNotFoundException>

Exception thrown if one of the input parameters points to a resource
that does not exist. For example, if the bot ID specified does not
exist.


=head2 TextResponseEvent => L<Paws::LexRuntimeV2::TextResponseEvent>




=head2 ThrottlingException => L<Paws::LexRuntimeV2::ThrottlingException>

Exception thrown when your application exceeds the maximum number of
concurrent requests.


=head2 TranscriptEvent => L<Paws::LexRuntimeV2::TranscriptEvent>




=head2 ValidationException => L<Paws::LexRuntimeV2::ValidationException>

Exception thrown when one or more parameters could not be validated.
The C<message> contains the name of the field that isn't valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

