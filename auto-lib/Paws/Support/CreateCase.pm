
package Paws::Support::CreateCase;
  use Moose;
  has AttachmentSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentSetId' );
  has CategoryCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'categoryCode' );
  has CcEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ccEmailAddresses' );
  has CommunicationBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'communicationBody' , required => 1);
  has IssueType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'issueType' );
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' );
  has ServiceCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceCode' );
  has SeverityCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'severityCode' );
  has Subject => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subject' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::CreateCaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::CreateCase - Arguments for method CreateCase on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCase on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method CreateCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCase.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $CreateCaseResponse = $support->CreateCase(
      CommunicationBody => 'MyCommunicationBody',
      Subject           => 'MySubject',
      AttachmentSetId   => 'MyAttachmentSetId',            # OPTIONAL
      CategoryCode      => 'MyCategoryCode',               # OPTIONAL
      CcEmailAddresses  => [ 'MyCcEmailAddress', ... ],    # OPTIONAL
      IssueType         => 'MyIssueType',                  # OPTIONAL
      Language          => 'MyLanguage',                   # OPTIONAL
      ServiceCode       => 'MyServiceCode',                # OPTIONAL
      SeverityCode      => 'MySeverityCode',               # OPTIONAL
    );

    # Results:
    my $CaseId = $CreateCaseResponse->CaseId;

    # Returns a L<Paws::Support::CreateCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/CreateCase>

=head1 ATTRIBUTES


=head2 AttachmentSetId => Str

The ID of a set of one or more attachments for the case. Create the set
by using the AddAttachmentsToSet operation.



=head2 CategoryCode => Str

The category of problem for the support case. You also use the
DescribeServices operation to get the category code for a service. Each
AWS service defines its own set of category codes.



=head2 CcEmailAddresses => ArrayRef[Str|Undef]

A list of email addresses that AWS Support copies on case
correspondence. AWS Support identifies the account that creates the
case when you specify your AWS credentials in an HTTP POST method or
use the AWS SDKs (http://aws.amazon.com/tools/).



=head2 B<REQUIRED> CommunicationBody => Str

The communication body text that describes the issue. This text appears
in the B<Description> field on the AWS Support Center Create Case
(https://console.aws.amazon.com/support/home#/case/create) page.



=head2 IssueType => Str

The type of issue for the case. You can specify C<customer-service> or
C<technical>. If you don't specify a value, the default is
C<technical>.



=head2 Language => Str

The language in which AWS Support handles the case. You must specify
the ISO 639-1 code for the C<language> parameter if you want support in
that language. Currently, English ("en") and Japanese ("ja") are
supported.



=head2 ServiceCode => Str

The code for the AWS service. You can use the DescribeServices
operation to get the possible C<serviceCode> values.



=head2 SeverityCode => Str

A value that indicates the urgency of the case. This value determines
the response time according to your service level agreement with AWS
Support. You can use the DescribeSeverityLevels operation to get the
possible values for C<severityCode>.

For more information, see SeverityLevel and Choosing a Severity
(https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity)
in the I<AWS Support User Guide>.

The availability of severity levels depends on the support plan for the
AWS account.



=head2 B<REQUIRED> Subject => Str

The title of the support case. The title appears in the B<Subject>
field on the AWS Support Center Create Case
(https://console.aws.amazon.com/support/home#/case/create) page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCase in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

