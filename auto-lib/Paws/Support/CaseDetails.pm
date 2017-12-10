package Paws::Support::CaseDetails;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', request_name => 'caseId', traits => ['NameInRequest']);
  has CategoryCode => (is => 'ro', isa => 'Str', request_name => 'categoryCode', traits => ['NameInRequest']);
  has CcEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ccEmailAddresses', traits => ['NameInRequest']);
  has DisplayId => (is => 'ro', isa => 'Str', request_name => 'displayId', traits => ['NameInRequest']);
  has Language => (is => 'ro', isa => 'Str', request_name => 'language', traits => ['NameInRequest']);
  has RecentCommunications => (is => 'ro', isa => 'Paws::Support::RecentCaseCommunications', request_name => 'recentCommunications', traits => ['NameInRequest']);
  has ServiceCode => (is => 'ro', isa => 'Str', request_name => 'serviceCode', traits => ['NameInRequest']);
  has SeverityCode => (is => 'ro', isa => 'Str', request_name => 'severityCode', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Subject => (is => 'ro', isa => 'Str', request_name => 'subject', traits => ['NameInRequest']);
  has SubmittedBy => (is => 'ro', isa => 'Str', request_name => 'submittedBy', traits => ['NameInRequest']);
  has TimeCreated => (is => 'ro', isa => 'Str', request_name => 'timeCreated', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::CaseDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::CaseDetails object:

  $service_obj->Method(Att1 => { CaseId => $value, ..., TimeCreated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::CaseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseId

=head1 DESCRIPTION

A JSON-formatted object that contains the metadata for a support case.
It is contained the response from a DescribeCases request.
B<CaseDetails> contains the following fields:

=over

=item *

B<caseId.> The AWS Support case ID requested or returned in the call.
The case ID is an alphanumeric string formatted as shown in this
example: case-I<12345678910-2013-c4c1d2bf33c5cf47>.

=item *

B<categoryCode.> The category of problem for the AWS Support case.
Corresponds to the CategoryCode values returned by a call to
DescribeServices.

=item *

B<displayId.> The identifier for the case on pages in the AWS Support
Center.

=item *

B<language.> The ISO 639-1 code for the language in which AWS provides
support. AWS Support currently supports English ("en") and Japanese
("ja"). Language parameters must be passed explicitly for operations
that take them.

=item *

B<recentCommunications.> One or more Communication objects. Fields of
these objects are C<attachments>, C<body>, C<caseId>, C<submittedBy>,
and C<timeCreated>.

=item *

B<nextToken.> A resumption point for pagination.

=item *

B<serviceCode.> The identifier for the AWS service that corresponds to
the service code defined in the call to DescribeServices.

=item *

B<severityCode. >The severity code assigned to the case. Contains one
of the values returned by the call to DescribeSeverityLevels.

=item *

B<status.> The status of the case in the AWS Support Center.

=item *

B<subject.> The subject line of the case.

=item *

B<submittedBy.> The email address of the account that submitted the
case.

=item *

B<timeCreated.> The time the case was created, in ISO-8601 format.

=back


=head1 ATTRIBUTES


=head2 CaseId => Str

  The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>


=head2 CategoryCode => Str

  The category of problem for the AWS Support case.


=head2 CcEmailAddresses => ArrayRef[Str|Undef]

  The email addresses that receive copies of communication about the
case.


=head2 DisplayId => Str

  The ID displayed for the case in the AWS Support Center. This is a
numeric string.


=head2 Language => Str

  The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English ("en") and Japanese ("ja"). Language
parameters must be passed explicitly for operations that take them.


=head2 RecentCommunications => L<Paws::Support::RecentCaseCommunications>

  The five most recent communications between you and AWS Support Center,
including the IDs of any attachments to the communications. Also
includes a C<nextToken> that you can use to retrieve earlier
communications.


=head2 ServiceCode => Str

  The code for the AWS service returned by the call to DescribeServices.


=head2 SeverityCode => Str

  The code for the severity level returned by the call to
DescribeSeverityLevels.


=head2 Status => Str

  The status of the case.


=head2 Subject => Str

  The subject line for the case in the AWS Support Center.


=head2 SubmittedBy => Str

  The email address of the account that submitted the case.


=head2 TimeCreated => Str

  The time that the case was case created in the AWS Support Center.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

