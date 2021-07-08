
package Paws::SSMContacts::StartEngagement;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has IncidentId => (is => 'ro', isa => 'Str');
  has PublicContent => (is => 'ro', isa => 'Str');
  has PublicSubject => (is => 'ro', isa => 'Str');
  has Sender => (is => 'ro', isa => 'Str', required => 1);
  has Subject => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEngagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::StartEngagementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::StartEngagement - Arguments for method StartEngagement on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEngagement on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method StartEngagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEngagement.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $StartEngagementResult = $ssm -contacts->StartEngagement(
      ContactId        => 'MySsmContactsArn',
      Content          => 'MyContent',
      Sender           => 'MySender',
      Subject          => 'MySubject',
      IdempotencyToken => 'MyIdempotencyToken',    # OPTIONAL
      IncidentId       => 'MyIncidentId',          # OPTIONAL
      PublicContent    => 'MyPublicContent',       # OPTIONAL
      PublicSubject    => 'MyPublicSubject',       # OPTIONAL
    );

    # Results:
    my $EngagementArn = $StartEngagementResult->EngagementArn;

    # Returns a L<Paws::SSMContacts::StartEngagementResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/StartEngagement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The Amazon Resource Name (ARN) of the contact being engaged.



=head2 B<REQUIRED> Content => Str

The secure content of the message that was sent to the contact. Use
this field for engagements to C<VOICE> or C<EMAIL>.



=head2 IdempotencyToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 IncidentId => Str

The ARN of the incident that the engagement is part of.



=head2 PublicContent => Str

The insecure content of the message that was sent to the contact. Use
this field for engagements to C<SMS>.



=head2 PublicSubject => Str

The insecure subject of the message that was sent to the contact. Use
this field for engagements to C<SMS>.



=head2 B<REQUIRED> Sender => Str

The user that started the engagement.



=head2 B<REQUIRED> Subject => Str

The secure subject of the message that was sent to the contact. Use
this field for engagements to C<VOICE> or C<EMAIL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEngagement in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

