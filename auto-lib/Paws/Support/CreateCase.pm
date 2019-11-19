# Generated from json/callargs_class.tt

package Paws::Support::CreateCase;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Support::Types qw//;
  has AttachmentSetId => (is => 'ro', isa => Str, predicate => 1);
  has CategoryCode => (is => 'ro', isa => Str, predicate => 1);
  has CcEmailAddresses => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has CommunicationBody => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IssueType => (is => 'ro', isa => Str, predicate => 1);
  has Language => (is => 'ro', isa => Str, predicate => 1);
  has ServiceCode => (is => 'ro', isa => Str, predicate => 1);
  has SeverityCode => (is => 'ro', isa => Str, predicate => 1);
  has Subject => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCase');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Support::CreateCaseResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CommunicationBody' => {
                                        'type' => 'Str'
                                      },
               'AttachmentSetId' => {
                                      'type' => 'Str'
                                    },
               'Subject' => {
                              'type' => 'Str'
                            },
               'SeverityCode' => {
                                   'type' => 'Str'
                                 },
               'Language' => {
                               'type' => 'Str'
                             },
               'ServiceCode' => {
                                  'type' => 'Str'
                                },
               'IssueType' => {
                                'type' => 'Str'
                              },
               'CategoryCode' => {
                                   'type' => 'Str'
                                 },
               'CcEmailAddresses' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'NameInRequest' => {
                       'SeverityCode' => 'severityCode',
                       'Subject' => 'subject',
                       'AttachmentSetId' => 'attachmentSetId',
                       'CommunicationBody' => 'communicationBody',
                       'CcEmailAddresses' => 'ccEmailAddresses',
                       'CategoryCode' => 'categoryCode',
                       'IssueType' => 'issueType',
                       'ServiceCode' => 'serviceCode',
                       'Language' => 'language'
                     },
  'IsRequired' => {
                    'Subject' => 1,
                    'CommunicationBody' => 1
                  }
}
;
    return $Params_map;
  }

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
by using AddAttachmentsToSet.



=head2 CategoryCode => Str

The category of problem for the AWS Support case.



=head2 CcEmailAddresses => ArrayRef[Str|Undef]

A list of email addresses that AWS Support copies on case
correspondence.



=head2 B<REQUIRED> CommunicationBody => Str

The communication body text when you create an AWS Support case by
calling CreateCase.



=head2 IssueType => Str

The type of issue for the case. You can specify either
"customer-service" or "technical." If you do not indicate a value, the
default is "technical."

Service limit increases are not supported by the Support API; you must
submit service limit increase requests in Support Center
(https://console.aws.amazon.com/support).



=head2 Language => Str

The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English ("en") and Japanese ("ja"). Language
parameters must be passed explicitly for operations that take them.



=head2 ServiceCode => Str

The code for the AWS service returned by the call to DescribeServices.



=head2 SeverityCode => Str

The code for the severity level returned by the call to
DescribeSeverityLevels.

The availability of severity levels depends on the support plan for the
account.



=head2 B<REQUIRED> Subject => Str

The title of the AWS Support case.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCase in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

