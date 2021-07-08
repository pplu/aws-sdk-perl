package Paws::Synthetics;
  use Moose;
  sub service { 'synthetics' }
  sub signing_name { 'synthetics' }
  sub version { '2017-10-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::CreateCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DeleteCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCanaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DescribeCanaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCanariesLastRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DescribeCanariesLastRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuntimeVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DescribeRuntimeVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::GetCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCanaryRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::GetCanaryRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::StartCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::StopCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::UpdateCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateCanary DeleteCanary DescribeCanaries DescribeCanariesLastRun DescribeRuntimeVersions GetCanary GetCanaryRuns ListTagsForResource StartCanary StopCanary TagResource UntagResource UpdateCanary / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics - Perl Interface to AWS Synthetics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Synthetics');
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

Amazon CloudWatch Synthetics

You can use Amazon CloudWatch Synthetics to continually monitor your
services. You can create and manage I<canaries>, which are modular,
lightweight scripts that monitor your endpoints and APIs from the
outside-in. You can set up your canaries to run 24 hours a day, once
per minute. The canaries help you check the availability and latency of
your web services and troubleshoot anomalies by investigating load time
data, screenshots of the UI, logs, and metrics. The canaries seamlessly
integrate with CloudWatch ServiceLens to help you trace the causes of
impacted nodes in your applications. For more information, see Using
ServiceLens to Monitor the Health of Your Applications
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html)
in the I<Amazon CloudWatch User Guide>.

Before you create and manage canaries, be aware of the security
considerations. For more information, see Security Considerations for
Synthetics Canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11>


=head1 METHODS

=head2 CreateCanary

=over

=item ArtifactS3Location => Str

=item Code => L<Paws::Synthetics::CanaryCodeInput>

=item ExecutionRoleArn => Str

=item Name => Str

=item RuntimeVersion => Str

=item Schedule => L<Paws::Synthetics::CanaryScheduleInput>

=item [FailureRetentionPeriodInDays => Int]

=item [RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>]

=item [SuccessRetentionPeriodInDays => Int]

=item [Tags => L<Paws::Synthetics::TagMap>]

=item [VpcConfig => L<Paws::Synthetics::VpcConfigInput>]


=back

Each argument is described in detail in: L<Paws::Synthetics::CreateCanary>

Returns: a L<Paws::Synthetics::CreateCanaryResponse> instance

Creates a canary. Canaries are scripts that monitor your endpoints and
APIs from the outside-in. Canaries help you check the availability and
latency of your web services and troubleshoot anomalies by
investigating load time data, screenshots of the UI, logs, and metrics.
You can set up a canary to run continuously or just once.

Do not use C<CreateCanary> to modify an existing canary. Use
UpdateCanary
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html)
instead.

To create canaries, you must have the C<CloudWatchSyntheticsFullAccess>
policy. If you are creating a new IAM role for the canary, you also
need the the C<iam:CreateRole>, C<iam:CreatePolicy> and
C<iam:AttachRolePolicy> permissions. For more information, see
Necessary Roles and Permissions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles).

Do not include secrets or proprietary information in your canary names.
The canary name makes up part of the Amazon Resource Name (ARN) for the
canary, and the ARN is included in outbound calls over the internet.
For more information, see Security Considerations for Synthetics
Canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).


=head2 DeleteCanary

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::DeleteCanary>

Returns: a L<Paws::Synthetics::DeleteCanaryResponse> instance

Permanently deletes the specified canary.

When you delete a canary, resources used and created by the canary are
not automatically deleted. After you delete a canary that you do not
intend to use again, you should also delete the following:

=over

=item *

The Lambda functions and layers used by this canary. These have the
prefix C<cwsyn-I<MyCanaryName> >.

=item *

The CloudWatch alarms created for this canary. These alarms have a name
of C<Synthetics-SharpDrop-Alarm-I<MyCanaryName> >.

=item *

Amazon S3 objects and buckets, such as the canary's artifact location.

=item *

IAM roles created for the canary. If they were created in the console,
these roles have the name C<
role/service-role/CloudWatchSyntheticsRole-I<MyCanaryName> >.

=item *

CloudWatch Logs log groups created for the canary. These logs groups
have the name C</aws/lambda/cwsyn-I<MyCanaryName> >.

=back

Before you delete a canary, you might want to use C<GetCanary> to
display the information about this canary. Make note of the information
returned by this operation so that you can delete these resources after
you delete the canary.


=head2 DescribeCanaries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::DescribeCanaries>

Returns: a L<Paws::Synthetics::DescribeCanariesResponse> instance

This operation returns a list of the canaries in your account, along
with full details about each canary.

This operation does not have resource-level authorization, so if a user
is able to use C<DescribeCanaries>, the user can see all of the
canaries in the account. A deny policy can only be used to restrict
access to all canaries. It cannot be used on specific resources.


=head2 DescribeCanariesLastRun

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::DescribeCanariesLastRun>

Returns: a L<Paws::Synthetics::DescribeCanariesLastRunResponse> instance

Use this operation to see information from the most recent run of each
canary that you have created.


=head2 DescribeRuntimeVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::DescribeRuntimeVersions>

Returns: a L<Paws::Synthetics::DescribeRuntimeVersionsResponse> instance

Returns a list of Synthetics canary runtime versions. For more
information, see Canary Runtime Versions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).


=head2 GetCanary

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::GetCanary>

Returns: a L<Paws::Synthetics::GetCanaryResponse> instance

Retrieves complete information about one canary. You must specify the
name of the canary that you want. To get a list of canaries and their
names, use DescribeCanaries
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).


=head2 GetCanaryRuns

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::GetCanaryRuns>

Returns: a L<Paws::Synthetics::GetCanaryRunsResponse> instance

Retrieves a list of runs for a specified canary.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::ListTagsForResource>

Returns: a L<Paws::Synthetics::ListTagsForResourceResponse> instance

Displays the tags associated with a canary.


=head2 StartCanary

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::StartCanary>

Returns: a L<Paws::Synthetics::StartCanaryResponse> instance

Use this operation to run a canary that has already been created. The
frequency of the canary runs is determined by the value of the canary's
C<Schedule>. To see a canary's schedule, use GetCanary
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html).


=head2 StopCanary

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::StopCanary>

Returns: a L<Paws::Synthetics::StopCanaryResponse> instance

Stops the canary to prevent all future runs. If the canary is currently
running, Synthetics stops waiting for the current run of the specified
canary to complete. The run that is in progress completes on its own,
publishes metrics, and uploads artifacts, but it is not recorded in
Synthetics as a completed run.

You can use C<StartCanary> to start it running again with the
canaryE<rsquo>s current schedule at any point in the future.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Synthetics::TagMap>


=back

Each argument is described in detail in: L<Paws::Synthetics::TagResource>

Returns: a L<Paws::Synthetics::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified canary.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to AWS and are interpreted
strictly as strings of characters.

You can use the C<TagResource> action with a canary that already has
tags. If you specify a new tag key for the alarm, this tag is appended
to the list of tags associated with the alarm. If you specify a tag key
that is already associated with the alarm, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a canary.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Synthetics::UntagResource>

Returns: a L<Paws::Synthetics::UntagResourceResponse> instance

Removes one or more tags from the specified canary.


=head2 UpdateCanary

=over

=item Name => Str

=item [Code => L<Paws::Synthetics::CanaryCodeInput>]

=item [ExecutionRoleArn => Str]

=item [FailureRetentionPeriodInDays => Int]

=item [RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>]

=item [RuntimeVersion => Str]

=item [Schedule => L<Paws::Synthetics::CanaryScheduleInput>]

=item [SuccessRetentionPeriodInDays => Int]

=item [VpcConfig => L<Paws::Synthetics::VpcConfigInput>]


=back

Each argument is described in detail in: L<Paws::Synthetics::UpdateCanary>

Returns: a L<Paws::Synthetics::UpdateCanaryResponse> instance

Use this operation to change the settings of a canary that has already
been created.

You can't use this operation to update the tags of an existing canary.
To change the tags of an existing canary, use TagResource
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

