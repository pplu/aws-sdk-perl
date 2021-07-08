
package Paws::Chime::CreateMeetingDialOut;
  use Moose;
  has FromPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has JoinToken => (is => 'ro', isa => 'Str', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meetingId', required => 1);
  has ToPhoneNumber => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMeetingDialOut');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{meetingId}/dial-outs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateMeetingDialOutResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateMeetingDialOut - Arguments for method CreateMeetingDialOut on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMeetingDialOut on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateMeetingDialOut.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMeetingDialOut.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateMeetingDialOutResponse = $chime->CreateMeetingDialOut(
      FromPhoneNumber => 'MyE164PhoneNumber',
      JoinToken       => 'MyJoinTokenString',
      MeetingId       => 'MyGuidString',
      ToPhoneNumber   => 'MyE164PhoneNumber',

    );

    # Results:
    my $TransactionId = $CreateMeetingDialOutResponse->TransactionId;

    # Returns a L<Paws::Chime::CreateMeetingDialOutResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateMeetingDialOut>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FromPhoneNumber => Str

Phone number used as the caller ID when the remote party receives a
call.



=head2 B<REQUIRED> JoinToken => Str

Token used by the Amazon Chime SDK attendee. Call the CreateAttendee
(https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html)
action to get a join token.



=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK meeting ID.



=head2 B<REQUIRED> ToPhoneNumber => Str

Phone number called when inviting someone to a meeting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMeetingDialOut in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

