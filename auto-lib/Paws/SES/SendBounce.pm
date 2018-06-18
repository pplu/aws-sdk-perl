
package Paws::SES::SendBounce;
  use Moose;
  has BouncedRecipientInfoList => (is => 'ro', isa => 'ArrayRef[Paws::SES::BouncedRecipientInfo]', required => 1);
  has BounceSender => (is => 'ro', isa => 'Str', required => 1);
  has BounceSenderArn => (is => 'ro', isa => 'Str');
  has Explanation => (is => 'ro', isa => 'Str');
  has MessageDsn => (is => 'ro', isa => 'Paws::SES::MessageDsn');
  has OriginalMessageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendBounce');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SendBounceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendBounceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendBounce - Arguments for method SendBounce on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendBounce on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SendBounce.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendBounce.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $SendBounceResponse = $email->SendBounce(
      BounceSender             => 'MyAddress',
      BouncedRecipientInfoList => [
        {
          Recipient  => 'MyAddress',
          BounceType => 'DoesNotExist'
          , # values: DoesNotExist, MessageTooLarge, ExceededQuota, ContentRejected, Undefined, TemporaryFailure; OPTIONAL
          RecipientArn       => 'MyAmazonResourceName',    # OPTIONAL
          RecipientDsnFields => {
            Action =>
              'failed',  # values: failed, delayed, delivered, relayed, expanded
            Status          => 'MyDsnStatus',
            DiagnosticCode  => 'MyDiagnosticCode',    # OPTIONAL
            ExtensionFields => [
              {
                Name  => 'MyExtensionFieldName',
                Value => 'MyExtensionFieldValue',

              },
              ...
            ],                                        # OPTIONAL
            FinalRecipient  => 'MyAddress',
            LastAttemptDate => '1970-01-01T01:00:00',    # OPTIONAL
            RemoteMta       => 'MyRemoteMta',            # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      OriginalMessageId => 'MyMessageId',
      BounceSenderArn   => 'MyAmazonResourceName',    # OPTIONAL
      Explanation       => 'MyExplanation',           # OPTIONAL
      MessageDsn        => {
        ReportingMta    => 'MyReportingMta',
        ArrivalDate     => '1970-01-01T01:00:00',     # OPTIONAL
        ExtensionFields => [
          {
            Name  => 'MyExtensionFieldName',
            Value => 'MyExtensionFieldValue',

          },
          ...
        ],                                            # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $MessageId = $SendBounceResponse->MessageId;

    # Returns a L<Paws::SES::SendBounceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SendBounce>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BouncedRecipientInfoList => ArrayRef[L<Paws::SES::BouncedRecipientInfo>]

A list of recipients of the bounced message, including the information
required to create the Delivery Status Notifications (DSNs) for the
recipients. You must specify at least one C<BouncedRecipientInfo> in
the list.



=head2 B<REQUIRED> BounceSender => Str

The address to use in the "From" header of the bounce message. This
must be an identity that you have verified with Amazon SES.



=head2 BounceSenderArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to use the address in the "From" header of the bounce.
For more information about sending authorization, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).



=head2 Explanation => Str

Human-readable text for the bounce message to explain the failure. If
not specified, the text will be auto-generated based on the bounced
recipient information.



=head2 MessageDsn => L<Paws::SES::MessageDsn>

Message-related DSN fields. If not specified, Amazon SES will choose
the values.



=head2 B<REQUIRED> OriginalMessageId => Str

The message ID of the message to be bounced.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendBounce in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

