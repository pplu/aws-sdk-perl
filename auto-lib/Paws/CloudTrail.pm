package Paws::CloudTrail;
  use Moose;
  sub service { 'cloudtrail' }
  sub version { '2013-11-01' }
  sub target_prefix { 'com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  
  sub LookupAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->LookupEvents(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->LookupEvents(@_, NextToken => $result->NextToken);
        push @{ $result->Events }, @{ $result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->LookupEvents(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Events') foreach (@{ $result->Events });
      }
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
Tools for Amazon Web Services page.

See the AWS CloudTrail User Guide for information about the data that
is included with each AWS API call listed in the log files.

=head1 METHODS

=head2 AddTags(ResourceId => Str, [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]])

Each argument is described in detail in: L<Paws::CloudTrail::AddTags>

Returns: a L<Paws::CloudTrail::AddTagsResponse> instance

  Adds one or more tags to a trail, up to a limit of 50. Tags must be
unique per trail. Overwrites an existing tag's value when a new value
is specified for an existing tag key. If you specify a key without a
value, the tag will be created with the specified key and a value of
null. You can tag a trail that applies to all regions only from the
region in which the trail was created (that is, from its home region).


=head2 CreateTrail(Name => Str, S3BucketName => Str, [CloudWatchLogsLogGroupArn => Str, CloudWatchLogsRoleArn => Str, EnableLogFileValidation => Bool, IncludeGlobalServiceEvents => Bool, IsMultiRegionTrail => Bool, KmsKeyId => Str, S3KeyPrefix => Str, SnsTopicName => Str])

Each argument is described in detail in: L<Paws::CloudTrail::CreateTrail>

Returns: a L<Paws::CloudTrail::CreateTrailResponse> instance

  Creates a trail that specifies the settings for delivery of log data to
an Amazon S3 bucket. A maximum of five trails can exist in a region,
irrespective of the region in which they were created.


=head2 DeleteTrail(Name => Str)

Each argument is described in detail in: L<Paws::CloudTrail::DeleteTrail>

Returns: a L<Paws::CloudTrail::DeleteTrailResponse> instance

  Deletes a trail. This operation must be called from the region in which
the trail was created. C<DeleteTrail> cannot be called on the shadow
trails (replicated trails in other regions) of a trail that is enabled
in all regions.


=head2 DescribeTrails([IncludeShadowTrails => Bool, TrailNameList => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::CloudTrail::DescribeTrails>

Returns: a L<Paws::CloudTrail::DescribeTrailsResponse> instance

  Retrieves settings for the trail associated with the current region for
your account.


=head2 GetEventSelectors([TrailName => Str])

Each argument is described in detail in: L<Paws::CloudTrail::GetEventSelectors>

Returns: a L<Paws::CloudTrail::GetEventSelectorsResponse> instance

  Describes the settings for the event selectors that you configured for
your trail. The information returned for your event selectors includes
the following:

=over

=item *

The S3 objects that you are logging for data events.

=item *

If your event selector includes management events.

=item *

If your event selector includes read-only events, write-only events, or
all.

=back

For more information, see Configuring Event Selectors for Trails in the
I<AWS CloudTrail User Guide>.


=head2 GetTrailStatus(Name => Str)

Each argument is described in detail in: L<Paws::CloudTrail::GetTrailStatus>

Returns: a L<Paws::CloudTrail::GetTrailStatusResponse> instance

  Returns a JSON-formatted list of information about the specified trail.
Fields include information on delivery errors, Amazon SNS and Amazon S3
errors, and start and stop logging times for each trail. This operation
returns trail status from a single region. To return trail status from
all regions, you must call the operation on each region.


=head2 ListPublicKeys([EndTime => Str, NextToken => Str, StartTime => Str])

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


=head2 ListTags(ResourceIdList => ArrayRef[Str|Undef], [NextToken => Str])

Each argument is described in detail in: L<Paws::CloudTrail::ListTags>

Returns: a L<Paws::CloudTrail::ListTagsResponse> instance

  Lists the tags for the trail in the current region.


=head2 LookupEvents([EndTime => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::CloudTrail::LookupEvents>

Returns: a L<Paws::CloudTrail::LookupEventsResponse> instance

  Looks up API activity events captured by CloudTrail that create,
update, or delete resources in your account. Events for a region can be
looked up for the times in which you had CloudTrail turned on in that
region during the last seven days. Lookup supports the following
attributes:

=over

=item *

Event ID

=item *

Event name

=item *

Resource name

=item *

Resource type

=item *

User name

=back

All attributes are optional. The default number of results returned is
10, with a maximum of 50 possible. The response includes a token that
you can use to get the next page of results.

The rate of lookup requests is limited to one per second per account.
If this limit is exceeded, a throttling error occurs.

Events that occurred during the selected time range will not be
available for lookup if CloudTrail logging was not enabled when the
events occurred.


=head2 PutEventSelectors([EventSelectors => ArrayRef[L<Paws::CloudTrail::EventSelector>], TrailName => Str])

Each argument is described in detail in: L<Paws::CloudTrail::PutEventSelectors>

Returns: a L<Paws::CloudTrail::PutEventSelectorsResponse> instance

  Configures an event selector for your trail. Use event selectors to
specify the type of events that you want your trail to log. When an
event occurs in your account, CloudTrail evaluates the event selectors
in all trails. For each trail, if the event matches any event selector,
the trail processes and logs the event. If the event doesn't match any
event selector, the trail doesn't log the event.

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
information, see Configuring Event Selectors for Trails in the I<AWS
CloudTrail User Guide>.


=head2 RemoveTags(ResourceId => Str, [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]])

Each argument is described in detail in: L<Paws::CloudTrail::RemoveTags>

Returns: a L<Paws::CloudTrail::RemoveTagsResponse> instance

  Removes the specified tags from a trail.


=head2 StartLogging(Name => Str)

Each argument is described in detail in: L<Paws::CloudTrail::StartLogging>

Returns: a L<Paws::CloudTrail::StartLoggingResponse> instance

  Starts the recording of AWS API calls and log file delivery for a
trail. For a trail that is enabled in all regions, this operation must
be called from the region in which the trail was created. This
operation cannot be called on the shadow trails (replicated trails in
other regions) of a trail that is enabled in all regions.


=head2 StopLogging(Name => Str)

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


=head2 UpdateTrail(Name => Str, [CloudWatchLogsLogGroupArn => Str, CloudWatchLogsRoleArn => Str, EnableLogFileValidation => Bool, IncludeGlobalServiceEvents => Bool, IsMultiRegionTrail => Bool, KmsKeyId => Str, S3BucketName => Str, S3KeyPrefix => Str, SnsTopicName => Str])

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

=head2 LookupAllEvents(sub { },[EndTime => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 LookupAllEvents([EndTime => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::LookupEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

