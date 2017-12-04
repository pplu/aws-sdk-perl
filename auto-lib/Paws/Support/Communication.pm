package Paws::Support::Communication;
  use Moose;
  has AttachmentSet => (is => 'ro', isa => 'ArrayRef[Paws::Support::AttachmentDetails]', request_name => 'attachmentSet', traits => ['NameInRequest']);
  has Body => (is => 'ro', isa => 'Str', request_name => 'body', traits => ['NameInRequest']);
  has CaseId => (is => 'ro', isa => 'Str', request_name => 'caseId', traits => ['NameInRequest']);
  has SubmittedBy => (is => 'ro', isa => 'Str', request_name => 'submittedBy', traits => ['NameInRequest']);
  has TimeCreated => (is => 'ro', isa => 'Str', request_name => 'timeCreated', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::Communication

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::Communication object:

  $service_obj->Method(Att1 => { AttachmentSet => $value, ..., TimeCreated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::Communication object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentSet

=head1 DESCRIPTION

A communication associated with an AWS Support case. The communication
consists of the case ID, the message body, attachment information, the
account email address, and the date and time of the communication.

=head1 ATTRIBUTES


=head2 AttachmentSet => ArrayRef[L<Paws::Support::AttachmentDetails>]

  Information about the attachments to the case communication.


=head2 Body => Str

  The text of the communication between the customer and AWS Support.


=head2 CaseId => Str

  The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>


=head2 SubmittedBy => Str

  The email address of the account that submitted the AWS Support case.


=head2 TimeCreated => Str

  The time the communication was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

