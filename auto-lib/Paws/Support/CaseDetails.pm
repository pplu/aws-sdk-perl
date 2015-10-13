package Paws::Support::CaseDetails;
  use Moose;
  has caseId => (is => 'ro', isa => 'Str');
  has categoryCode => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has displayId => (is => 'ro', isa => 'Str');
  has language => (is => 'ro', isa => 'Str');
  has recentCommunications => (is => 'ro', isa => 'Paws::Support::RecentCaseCommunications');
  has serviceCode => (is => 'ro', isa => 'Str');
  has severityCode => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
  has subject => (is => 'ro', isa => 'Str');
  has submittedBy => (is => 'ro', isa => 'Str');
  has timeCreated => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { caseId => $value, ..., timeCreated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::CaseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->caseId

=head1 DESCRIPTION

A JSON-formatted object that contains the metadata for a support case.
It is contained the response from a DescribeCases request.
B<CaseDetails> contains the following fields:

=over

=item 1. B<CaseID.> The AWS Support case ID requested or returned in
the call. The case ID is an alphanumeric string formatted as shown in
this example: case-I<12345678910-2013-c4c1d2bf33c5cf47>.

=item 2. B<CategoryCode.> The category of problem for the AWS Support
case. Corresponds to the CategoryCode values returned by a call to
DescribeServices.

=item 3. B<DisplayId.> The identifier for the case on pages in the AWS
Support Center.

=item 4. B<Language.> The ISO 639-1 code for the language in which AWS
provides support. AWS Support currently supports English ("en") and
Japanese ("ja"). Language parameters must be passed explicitly for
operations that take them.

=item 5. B<RecentCommunications.> One or more Communication objects.
Fields of these objects are C<Attachments>, C<Body>, C<CaseId>,
C<SubmittedBy>, and C<TimeCreated>.

=item 6. B<NextToken.> A resumption point for pagination.

=item 7. B<ServiceCode.> The identifier for the AWS service that
corresponds to the service code defined in the call to
DescribeServices.

=item 8. B<SeverityCode. >The severity code assigned to the case.
Contains one of the values returned by the call to
DescribeSeverityLevels.

=item 9. B<Status.> The status of the case in the AWS Support Center.

=item 10. B<Subject.> The subject line of the case.

=item 11. B<SubmittedBy.> The email address of the account that
submitted the case.

=item 12. B<TimeCreated.> The time the case was created, in ISO-8601
format.

=back


=head1 ATTRIBUTES

=head2 caseId => Str

  The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>

=head2 categoryCode => Str

  The category of problem for the AWS Support case.

=head2 ccEmailAddresses => ArrayRef[Str]

  The email addresses that receive copies of communication about the
case.

=head2 displayId => Str

  The ID displayed for the case in the AWS Support Center. This is a
numeric string.

=head2 language => Str

  The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English ("en") and Japanese ("ja"). Language
parameters must be passed explicitly for operations that take them.

=head2 recentCommunications => L<Paws::Support::RecentCaseCommunications>

  The five most recent communications between you and AWS Support Center,
including the IDs of any attachments to the communications. Also
includes a C<nextToken> that you can use to retrieve earlier
communications.

=head2 serviceCode => Str

  The code for the AWS service returned by the call to DescribeServices.

=head2 severityCode => Str

  The code for the severity level returned by the call to
DescribeSeverityLevels.

=head2 status => Str

  The status of the case.

=head2 subject => Str

  The subject line for the case in the AWS Support Center.

=head2 submittedBy => Str

  The email address of the account that submitted the case.

=head2 timeCreated => Str

  The time that the case was case created in the AWS Support Center.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

