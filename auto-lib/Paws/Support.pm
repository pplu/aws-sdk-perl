package Paws::Support;
  use Moose;
  sub service { 'support' }
  sub signing_name { 'support' }
  sub version { '2013-04-15' }
  sub target_prefix { 'AWSSupport_20130415' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddAttachmentsToSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::AddAttachmentsToSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddCommunicationToCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::AddCommunicationToCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::CreateCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCommunications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeCommunications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSeverityLevels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeSeverityLevels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrustedAdvisorCheckRefreshStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrustedAdvisorCheckResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeTrustedAdvisorCheckResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrustedAdvisorChecks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeTrustedAdvisorChecks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrustedAdvisorCheckSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::DescribeTrustedAdvisorCheckSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RefreshTrustedAdvisorCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::RefreshTrustedAdvisorCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Support::ResolveCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeCases(@_, nextToken => $next_result->nextToken);
        push @{ $result->cases }, @{ $next_result->cases };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'cases') foreach (@{ $result->cases });
        $result = $self->DescribeCases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'cases') foreach (@{ $result->cases });
    }

    return undef
  }
  sub DescribeAllCommunications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCommunications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeCommunications(@_, nextToken => $next_result->nextToken);
        push @{ $result->communications }, @{ $next_result->communications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'communications') foreach (@{ $result->communications });
        $result = $self->DescribeCommunications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'communications') foreach (@{ $result->communications });
    }

    return undef
  }


  sub operations { qw/AddAttachmentsToSet AddCommunicationToCase CreateCase DescribeAttachment DescribeCases DescribeCommunications DescribeServices DescribeSeverityLevels DescribeTrustedAdvisorCheckRefreshStatuses DescribeTrustedAdvisorCheckResult DescribeTrustedAdvisorChecks DescribeTrustedAdvisorCheckSummaries RefreshTrustedAdvisorCheck ResolveCase / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Support - Perl Interface to AWS AWS Support

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Support');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Support

The AWS Support API reference is intended for programmers who need
detailed information about the AWS Support operations and data types.
This service enables you to manage your AWS Support cases
programmatically. It uses HTTP methods that return results in JSON
format.

The AWS Support service also exposes a set of Trusted Advisor
(http://aws.amazon.com/premiumsupport/trustedadvisor/) features. You
can retrieve a list of checks and their descriptions, get check
results, specify checks to refresh, and get the refresh status of
checks.

The following list describes the AWS Support case management
operations:

=over

=item *

B<Service names, issue categories, and available severity levels. >The
DescribeServices and DescribeSeverityLevels operations return AWS
service names, service codes, service categories, and problem severity
levels. You use these values when you call the CreateCase operation.

=item *

B<Case creation, case details, and case resolution.> The CreateCase,
DescribeCases, DescribeAttachment, and ResolveCase operations create
AWS Support cases, retrieve information about cases, and resolve cases.

=item *

B<Case communication.> The DescribeCommunications,
AddCommunicationToCase, and AddAttachmentsToSet operations retrieve and
add communications and attachments to AWS Support cases.

=back

The following list describes the operations available from the AWS
Support service for Trusted Advisor:

=over

=item *

DescribeTrustedAdvisorChecks returns the list of checks that run
against your AWS resources.

=item *

Using the C<checkId> for a specific check returned by
DescribeTrustedAdvisorChecks, you can call
DescribeTrustedAdvisorCheckResult to obtain the results for the check
you specified.

=item *

DescribeTrustedAdvisorCheckSummaries returns summarized results for one
or more Trusted Advisor checks.

=item *

RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun a
specified check.

=item *

DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh status
of one or more checks.

=back

For authentication of requests, AWS Support uses Signature Version 4
Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

See About the AWS Support API
(http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html) in the
I<AWS Support User Guide> for information about how to use this service
to create and manage your support cases, and how to call Trusted
Advisor for results of checks on your resources.

For the AWS API documentation, see L<https://docs.aws.amazon.com/aws-support/>


=head1 METHODS

=head2 AddAttachmentsToSet

=over

=item Attachments => ArrayRef[L<Paws::Support::Attachment>]

=item [AttachmentSetId => Str]


=back

Each argument is described in detail in: L<Paws::Support::AddAttachmentsToSet>

Returns: a L<Paws::Support::AddAttachmentsToSetResponse> instance

Adds one or more attachments to an attachment set. If an
C<attachmentSetId> is not specified, a new attachment set is created,
and the ID of the set is returned in the response. If an
C<attachmentSetId> is specified, the attachments are added to the
specified set, if it exists.

An attachment set is a temporary container for attachments that are to
be added to a case or case communication. The set is available for one
hour after it is created; the C<expiryTime> returned in the response
indicates when the set expires. The maximum number of attachments in a
set is 3, and the maximum size of any attachment in the set is 5 MB.


=head2 AddCommunicationToCase

=over

=item CommunicationBody => Str

=item [AttachmentSetId => Str]

=item [CaseId => Str]

=item [CcEmailAddresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Support::AddCommunicationToCase>

Returns: a L<Paws::Support::AddCommunicationToCaseResponse> instance

Adds additional customer communication to an AWS Support case. You use
the C<caseId> value to identify the case to add communication to. You
can list a set of email addresses to copy on the communication using
the C<ccEmailAddresses> value. The C<communicationBody> value contains
the text of the communication.

The response indicates the success or failure of the request.

This operation implements a subset of the features of the AWS Support
Center.


=head2 CreateCase

=over

=item CommunicationBody => Str

=item Subject => Str

=item [AttachmentSetId => Str]

=item [CategoryCode => Str]

=item [CcEmailAddresses => ArrayRef[Str|Undef]]

=item [IssueType => Str]

=item [Language => Str]

=item [ServiceCode => Str]

=item [SeverityCode => Str]


=back

Each argument is described in detail in: L<Paws::Support::CreateCase>

Returns: a L<Paws::Support::CreateCaseResponse> instance

Creates a new case in the AWS Support Center. This operation is modeled
on the behavior of the AWS Support Center Create Case
(https://console.aws.amazon.com/support/home#/case/create) page. Its
parameters require you to specify the following information:

=over

=item *

B<issueType.> The type of issue for the case. You can specify either
"customer-service" or "technical." If you do not indicate a value, the
default is "technical."

=item *

B<serviceCode.> The code for an AWS service. You obtain the
C<serviceCode> by calling DescribeServices.

=item *

B<categoryCode.> The category for the service defined for the
C<serviceCode> value. You also obtain the category code for a service
by calling DescribeServices. Each AWS service defines its own set of
category codes.

=item *

B<severityCode.> A value that indicates the urgency of the case, which
in turn determines the response time according to your service level
agreement with AWS Support. You obtain the SeverityCode by calling
DescribeSeverityLevels.

=item *

B<subject.> The B<Subject> field on the AWS Support Center Create Case
(https://console.aws.amazon.com/support/home#/case/create) page.

=item *

B<communicationBody.> The B<Description> field on the AWS Support
Center Create Case
(https://console.aws.amazon.com/support/home#/case/create) page.

=item *

B<attachmentSetId.> The ID of a set of attachments that has been
created by using AddAttachmentsToSet.

=item *

B<language.> The human language in which AWS Support handles the case.
English and Japanese are currently supported.

=item *

B<ccEmailAddresses.> The AWS Support Center B<CC> field on the Create
Case (https://console.aws.amazon.com/support/home#/case/create) page.
You can list email addresses to be copied on any correspondence about
the case. The account that opens the case is already identified by
passing the AWS Credentials in the HTTP POST method or in a method or
function call from one of the programming languages supported by an AWS
SDK (http://aws.amazon.com/tools/).

=back

To add additional communication or attachments to an existing case, use
AddCommunicationToCase.

A successful CreateCase request returns an AWS Support case number.
Case numbers are used by the DescribeCases operation to retrieve
existing AWS Support cases.


=head2 DescribeAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::Support::DescribeAttachment>

Returns: a L<Paws::Support::DescribeAttachmentResponse> instance

Returns the attachment that has the specified ID. Attachment IDs are
generated by the case management system when you add an attachment to a
case or case communication. Attachment IDs are returned in the
AttachmentDetails objects that are returned by the
DescribeCommunications operation.


=head2 DescribeCases

=over

=item [AfterTime => Str]

=item [BeforeTime => Str]

=item [CaseIdList => ArrayRef[Str|Undef]]

=item [DisplayId => Str]

=item [IncludeCommunications => Bool]

=item [IncludeResolvedCases => Bool]

=item [Language => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Support::DescribeCases>

Returns: a L<Paws::Support::DescribeCasesResponse> instance

Returns a list of cases that you specify by passing one or more case
IDs. In addition, you can filter the cases by date by setting values
for the C<afterTime> and C<beforeTime> request parameters. You can set
values for the C<includeResolvedCases> and C<includeCommunications>
request parameters to control how much information is returned.

Case data is available for 12 months after creation. If a case was
created more than 12 months ago, a request for data might cause an
error.

The response returns the following in JSON format:

=over

=item *

One or more CaseDetails data types.

=item *

One or more C<nextToken> values, which specify where to paginate the
returned records represented by the C<CaseDetails> objects.

=back



=head2 DescribeCommunications

=over

=item CaseId => Str

=item [AfterTime => Str]

=item [BeforeTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Support::DescribeCommunications>

Returns: a L<Paws::Support::DescribeCommunicationsResponse> instance

Returns communications (and attachments) for one or more support cases.
You can use the C<afterTime> and C<beforeTime> parameters to filter by
date. You can use the C<caseId> parameter to restrict the results to a
particular case.

Case data is available for 12 months after creation. If a case was
created more than 12 months ago, a request for data might cause an
error.

You can use the C<maxResults> and C<nextToken> parameters to control
the pagination of the result set. Set C<maxResults> to the number of
cases you want displayed on each page, and use C<nextToken> to specify
the resumption of pagination.


=head2 DescribeServices

=over

=item [Language => Str]

=item [ServiceCodeList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Support::DescribeServices>

Returns: a L<Paws::Support::DescribeServicesResponse> instance

Returns the current list of AWS services and a list of service
categories that applies to each one. You then use service names and
categories in your CreateCase requests. Each AWS service has its own
set of categories.

The service codes and category codes correspond to the values that are
displayed in the B<Service> and B<Category> drop-down lists on the AWS
Support Center Create Case
(https://console.aws.amazon.com/support/home#/case/create) page. The
values in those fields, however, do not necessarily match the service
codes and categories returned by the C<DescribeServices> request.
Always use the service codes and categories obtained programmatically.
This practice ensures that you always have the most recent set of
service and category codes.


=head2 DescribeSeverityLevels

=over

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::Support::DescribeSeverityLevels>

Returns: a L<Paws::Support::DescribeSeverityLevelsResponse> instance

Returns the list of severity levels that you can assign to an AWS
Support case. The severity level for a case is also a field in the
CaseDetails data type included in any CreateCase request.


=head2 DescribeTrustedAdvisorCheckRefreshStatuses

=over

=item CheckIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses>

Returns: a L<Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse> instance

Returns the refresh status of the Trusted Advisor checks that have the
specified check IDs. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

Some checks are refreshed automatically, and their refresh statuses
cannot be retrieved by using this operation. Use of the
C<DescribeTrustedAdvisorCheckRefreshStatuses> operation for these
checks causes an C<InvalidParameterValue> error.


=head2 DescribeTrustedAdvisorCheckResult

=over

=item CheckId => Str

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::Support::DescribeTrustedAdvisorCheckResult>

Returns: a L<Paws::Support::DescribeTrustedAdvisorCheckResultResponse> instance

Returns the results of the Trusted Advisor check that has the specified
check ID. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

The response contains a TrustedAdvisorCheckResult object, which
contains these three objects:

=over

=item *

TrustedAdvisorCategorySpecificSummary

=item *

TrustedAdvisorResourceDetail

=item *

TrustedAdvisorResourcesSummary

=back

In addition, the response contains these fields:

=over

=item *

B<status.> The alert status of the check: "ok" (green), "warning"
(yellow), "error" (red), or "not_available".

=item *

B<timestamp.> The time of the last refresh of the check.

=item *

B<checkId.> The unique identifier for the check.

=back



=head2 DescribeTrustedAdvisorChecks

=over

=item Language => Str


=back

Each argument is described in detail in: L<Paws::Support::DescribeTrustedAdvisorChecks>

Returns: a L<Paws::Support::DescribeTrustedAdvisorChecksResponse> instance

Returns information about all available Trusted Advisor checks,
including name, ID, category, description, and metadata. You must
specify a language code; English ("en") and Japanese ("ja") are
currently supported. The response contains a
TrustedAdvisorCheckDescription for each check.


=head2 DescribeTrustedAdvisorCheckSummaries

=over

=item CheckIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Support::DescribeTrustedAdvisorCheckSummaries>

Returns: a L<Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse> instance

Returns the summaries of the results of the Trusted Advisor checks that
have the specified check IDs. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

The response contains an array of TrustedAdvisorCheckSummary objects.


=head2 RefreshTrustedAdvisorCheck

=over

=item CheckId => Str


=back

Each argument is described in detail in: L<Paws::Support::RefreshTrustedAdvisorCheck>

Returns: a L<Paws::Support::RefreshTrustedAdvisorCheckResponse> instance

Requests a refresh of the Trusted Advisor check that has the specified
check ID. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

Some checks are refreshed automatically, and they cannot be refreshed
by using this operation. Use of the C<RefreshTrustedAdvisorCheck>
operation for these checks causes an C<InvalidParameterValue> error.

The response contains a TrustedAdvisorCheckRefreshStatus object, which
contains these fields:

=over

=item *

B<status.> The refresh status of the check: "none", "enqueued",
"processing", "success", or "abandoned".

=item *

B<millisUntilNextRefreshable.> The amount of time, in milliseconds,
until the check is eligible for refresh.

=item *

B<checkId.> The unique identifier for the check.

=back



=head2 ResolveCase

=over

=item [CaseId => Str]


=back

Each argument is described in detail in: L<Paws::Support::ResolveCase>

Returns: a L<Paws::Support::ResolveCaseResponse> instance

Takes a C<caseId> and returns the initial state of the case along with
the state of the case after the call to ResolveCase completed.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCases(sub { },[AfterTime => Str, BeforeTime => Str, CaseIdList => ArrayRef[Str|Undef], DisplayId => Str, IncludeCommunications => Bool, IncludeResolvedCases => Bool, Language => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllCases([AfterTime => Str, BeforeTime => Str, CaseIdList => ArrayRef[Str|Undef], DisplayId => Str, IncludeCommunications => Bool, IncludeResolvedCases => Bool, Language => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - cases, passing the object as the first parameter, and the string 'cases' as the second parameter 

If not, it will return a a L<Paws::Support::DescribeCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCommunications(sub { },CaseId => Str, [AfterTime => Str, BeforeTime => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllCommunications(CaseId => Str, [AfterTime => Str, BeforeTime => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - communications, passing the object as the first parameter, and the string 'communications' as the second parameter 

If not, it will return a a L<Paws::Support::DescribeCommunicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

