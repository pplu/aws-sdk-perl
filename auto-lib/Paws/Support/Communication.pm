package Paws::Support::Communication;
  use Moose;
  has attachmentSet => (is => 'ro', isa => 'ArrayRef[Paws::Support::AttachmentDetails]');
  has body => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str');
  has submittedBy => (is => 'ro', isa => 'Str');
  has timeCreated => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { attachmentSet => $value, ..., timeCreated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::Communication object:

  $result = $service_obj->Method(...);
  $result->Att1->attachmentSet

=head1 DESCRIPTION

A communication associated with an AWS Support case. The communication
consists of the case ID, the message body, attachment information, the
account email address, and the date and time of the communication.

=head1 ATTRIBUTES

=head2 attachmentSet => ArrayRef[L<Paws::Support::AttachmentDetails>]

  Information about the attachments to the case communication.

=head2 body => Str

  The text of the communication between the customer and AWS Support.

=head2 caseId => Str

  The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>

=head2 submittedBy => Str

  The email address of the account that submitted the AWS Support case.

=head2 timeCreated => Str

  The time the communication was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

