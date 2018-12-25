package Paws::CloudTrail;
  use Moose;
  sub service { 'cloudtrail' }
  sub signing_name { 'cloudtrail' }
  sub version { '2013-11-01' }
  sub target_prefix { 'com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CreateTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DescribeTrails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventSelectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetEventSelectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrailStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetTrailStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublicKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListPublicKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LookupEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::LookupEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEventSelectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::PutEventSelectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StopLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::UpdateTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllPublicKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPublicKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPublicKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->PublicKeyList }, @{ $next_result->PublicKeyList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PublicKeyList') foreach (@{ $result->PublicKeyList });
        $result = $self->ListPublicKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PublicKeyList') foreach (@{ $result->PublicKeyList });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceTagList }, @{ $next_result->ResourceTagList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceTagList') foreach (@{ $result->ResourceTagList });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceTagList') foreach (@{ $result->ResourceTagList });
    }

    return undef
  }
  sub LookupAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->LookupEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->LookupEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->LookupEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }


  sub operations { qw/AddTags CreateTrail DeleteTrail DescribeTrails GetEventSelectors GetTrailStatus ListPublicKeys ListTags LookupEvents PutEventSelectors RemoveTags StartLogging StopLogging UpdateTrail / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail - Perl Interface to AWS AWS CloudTrail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudTrail');
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

AWS CloudTrail

This is the CloudTrail API Reference. It provides descriptions of
actions, data types, common parameters, and common errors for
CloudTrail.

CloudTrail is a web service that records AWS API calls for your AWS
account and delivers log files to an Amazon S3 bucket. The recorded
information includes the identity of the user, the start time of the
AWS API call, the source IP address, the request parameters, and the
response elements returned by the service.

As an alternative to the API, you can use one of the AWS SDKs, which
consist of libraries and sample code for various programming languages
and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide
a convenient way to create programmatic access to AWSCloudTrail. For
example, the SDKs take care of cryptographically signing requests,
managing errors, and retrying requests automatically. For information
about the AWS SDKs, including how to download and install them, see the
Tools for Amazon Web Services page (http://aws.amazon.com/tools/).

See the AWS CloudTrail User Guide
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
for information about the data that is included with each AWS API call
listed in the log files.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01>


=head1 METHODS

=head2 AddTags

=over

=item ResourceId => Str

=item [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::AddTags>

Returns: a L<Paws::CloudTrail::AddTagsResponse> instance

Adds one or more tags to a trail, up to a limit of 50. Tags must be
unique per trail. Overwrites an existing tag's value when a new value
is specified for an existing tag key. If you specify a key without a
value, the tag will be created with the specified key and a value of
null. You can tag a trail that applies to all regions only from the
region in which the trail was created (that is, from its home region).


=head2 CreateTrail

=over

=item Name => Str

=item S3BucketName => Str

=item [CloudWatchLogsLogGroupArn => Str]

=item [CloudWatchLogsRoleArn => Str]

=item [EnableLogFileValidation => Bool]

=item [IncludeGlobalServiceEvents => Bool]

=item [IsMultiRegionTrail => Bool]

=item [IsOrganizationTrail => Bool]

=item [KmsKeyId => Str]

=item [S3KeyPrefix => Str]

=item [SnsTopicName => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::CreateTrail>

Returns: a L<Paws::CloudTrail::CreateTrailResponse> instance

Creates a trail that specifies the settings for delivery of log data to
an Amazon S3 bucket. A maximum of five trails can exist in a region,
irrespective of the region in which they were created.


=head2 DeleteTrail

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeleteTrail>

Returns: a L<Paws::CloudTrail::DeleteTrailResponse> instance

Deletes a trail. This operation must be called from the region in which
the trail was created. C<DeleteTrail> cannot be called on the shadow
trails (replicated trails in other regions) of a trail that is enabled
in all regions.


=head2 DescribeTrails

=over

=item [IncludeShadowTrails => Bool]

=item [TrailNameList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::DescribeTrails>

Returns: a L<Paws::CloudTrail::DescribeTrailsResponse> instance

Retrieves settings for the trail associated with the current region for
your account.


=head2 GetEventSelectors

=over

=item TrailName => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetEventSelectors>

Returns: a L<Paws::CloudTrail::GetEventSelectorsResponse> instance

Describes the settings for the event selectors that you configured for
your trail. The information returned for your event selectors includes
the following:

=over

=item *

If your event selector includes read-only events, write-only events, or
all events. This applies to both management events and data events.

=item *

If your event selector includes management events.

=item *

If your event selector includes data events, the Amazon S3 objects or
AWS Lambda functions that you are logging for data events.

=back

For more information, see Logging Data and Management Events for Trails
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html)
in the I<AWS CloudTrail User Guide>.


=head2 GetTrailStatus

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetTrailStatus>

Returns: a L<Paws::CloudTrail::GetTrailStatusResponse> instance

Returns a JSON-formatted list of information about the specified trail.
Fields include information on delivery errors, Amazon SNS and Amazon S3
errors, and start and stop logging times for each trail. This operation
returns trail status from a single region. To return trail status from
all regions, you must call the operation on each region.


=head2 ListPublicKeys

=over

=item [EndTime => Str]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListPublicKeys>

Returns: a L<Paws::CloudTrail::ListPublicKeysResponse> instance

Returns all public keys whose private keys were used to sign the digest
files within the specified time range. The public key is needed to
validate digest files that were signed with its corresponding private
key.

CloudTrail uses different private/public key pairs per region. Each
digest file is signed with a private key unique to its region.
Therefore, when you validate a digest file from a particular region,
you must look in the same region for its corresponding public key.


=head2 ListTags

=over

=item ResourceIdList => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListTags>

Returns: a L<Paws::CloudTrail::ListTagsResponse> instance

Lists the tags for the trail in the current region.


=head2 LookupEvents

=over

=item [EndTime => Str]

=item [LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::LookupEvents>

Returns: a L<Paws::CloudTrail::LookupEventsResponse> instance

Looks up management events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events)
captured by CloudTrail. Events for a region can be looked up in that
region during the last 90 days. Lookup supports the following
attributes:

=over

=item *

AWS access key

=item *

Event ID

=item *

Event name

=item *

Event source

=item *

Read only

=item *

Resource name

=item *

Resource type

=item *

User name

=back

All attributes are optional. The default number of results returned is
50, with a maximum of 50 possible. The response includes a token that
you can use to get the next page of results.

The rate of lookup requests is limited to one per second per account.
If this limit is exceeded, a throttling error occurs.

Events that occurred during the selected time range will not be
available for lookup if CloudTrail logging was not enabled when the
events occurred.


=head2 PutEventSelectors

=over

=item EventSelectors => ArrayRef[L<Paws::CloudTrail::EventSelector>]

=item TrailName => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::PutEventSelectors>

Returns: a L<Paws::CloudTrail::PutEventSelectorsResponse> instance

Configures an event selector for your trail. Use event selectors to
further specify the management and data event settings for your trail.
By default, trails created without specific event selectors will be
configured to log all read and write management events, and no data
events.

When an event occurs in your account, CloudTrail evaluates the event
selectors in all trails. For each trail, if the event matches any event
selector, the trail processes and logs the event. If the event doesn't
match any event selector, the trail doesn't log the event.

Example

=over

=item 1.

You create an event selector for a trail and specify that you want
write-only events.

=item 2.

The EC2 C<GetConsoleOutput> and C<RunInstances> API operations occur in
your account.

=item 3.

CloudTrail evaluates whether the events match your event selectors.

=item 4.

The C<RunInstances> is a write-only event and it matches your event
selector. The trail logs the event.

=item 5.

The C<GetConsoleOutput> is a read-only event but it doesn't match your
event selector. The trail doesn't log the event.

=back

The C<PutEventSelectors> operation must be called from the region in
which the trail was created; otherwise, an
C<InvalidHomeRegionException> is thrown.

You can configure up to five event selectors for each trail. For more
information, see Logging Data and Management Events for Trails
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html)
and Limits in AWS CloudTrail
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
in the I<AWS CloudTrail User Guide>.


=head2 RemoveTags

=over

=item ResourceId => Str

=item [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::RemoveTags>

Returns: a L<Paws::CloudTrail::RemoveTagsResponse> instance

Removes the specified tags from a trail.


=head2 StartLogging

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StartLogging>

Returns: a L<Paws::CloudTrail::StartLoggingResponse> instance

Starts the recording of AWS API calls and log file delivery for a
trail. For a trail that is enabled in all regions, this operation must
be called from the region in which the trail was created. This
operation cannot be called on the shadow trails (replicated trails in
other regions) of a trail that is enabled in all regions.


=head2 StopLogging

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StopLogging>

Returns: a L<Paws::CloudTrail::StopLoggingResponse> instance

Suspends the recording of AWS API calls and log file delivery for the
specified trail. Under most circumstances, there is no need to use this
action. You can update a trail without stopping it first. This action
is the only way to stop recording. For a trail enabled in all regions,
this operation must be called from the region in which the trail was
created, or an C<InvalidHomeRegionException> will occur. This operation
cannot be called on the shadow trails (replicated trails in other
regions) of a trail enabled in all regions.


=head2 UpdateTrail

=over

=item Name => Str

=item [CloudWatchLogsLogGroupArn => Str]

=item [CloudWatchLogsRoleArn => Str]

=item [EnableLogFileValidation => Bool]

=item [IncludeGlobalServiceEvents => Bool]

=item [IsMultiRegionTrail => Bool]

=item [IsOrganizationTrail => Bool]

=item [KmsKeyId => Str]

=item [S3BucketName => Str]

=item [S3KeyPrefix => Str]

=item [SnsTopicName => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::UpdateTrail>

Returns: a L<Paws::CloudTrail::UpdateTrailResponse> instance

Updates the settings that specify delivery of log files. Changes to a
trail do not require stopping the CloudTrail service. Use this action
to designate an existing bucket for log delivery. If the existing
bucket has previously been a target for CloudTrail log files, an IAM
policy exists for the bucket. C<UpdateTrail> must be called from the
region in which the trail was created; otherwise, an
C<InvalidHomeRegionException> is thrown.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllPublicKeys(sub { },[EndTime => Str, NextToken => Str, StartTime => Str])

=head2 ListAllPublicKeys([EndTime => Str, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PublicKeyList, passing the object as the first parameter, and the string 'PublicKeyList' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListPublicKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceIdList => ArrayRef[Str|Undef], [NextToken => Str])

=head2 ListAllTags(ResourceIdList => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceTagList, passing the object as the first parameter, and the string 'ResourceTagList' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 LookupAllEvents(sub { },[EndTime => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 LookupAllEvents([EndTime => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::LookupEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

