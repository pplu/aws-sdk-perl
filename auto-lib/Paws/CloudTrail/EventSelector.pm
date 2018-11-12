package Paws::CloudTrail::EventSelector;
  use Moose;
  has DataResources => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::DataResource]');
  has IncludeManagementEvents => (is => 'ro', isa => 'Bool');
  has ReadWriteType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::EventSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::EventSelector object:

  $service_obj->Method(Att1 => { DataResources => $value, ..., ReadWriteType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::EventSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->DataResources

=head1 DESCRIPTION

Use event selectors to further specify the management and data event
settings for your trail. By default, trails created without specific
event selectors will be configured to log all read and write management
events, and no data events. When an event occurs in your account,
CloudTrail evaluates the event selector for all trails. For each trail,
if the event matches any event selector, the trail processes and logs
the event. If the event doesn't match any event selector, the trail
doesn't log the event.

You can configure up to five event selectors for a trail.

=head1 ATTRIBUTES


=head2 DataResources => ArrayRef[L<Paws::CloudTrail::DataResource>]

  CloudTrail supports data event logging for Amazon S3 objects and AWS
Lambda functions. You can specify up to 250 resources for an individual
event selector, but the total number of data resources cannot exceed
250 across all event selectors in a trail. This limit does not apply if
you configure resource logging for all data events.

For more information, see Data Events
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events)
and Limits in AWS CloudTrail
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
in the I<AWS CloudTrail User Guide>.


=head2 IncludeManagementEvents => Bool

  Specify if you want your event selector to include management events
for your trail.

For more information, see Management Events
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events)
in the I<AWS CloudTrail User Guide>.

By default, the value is C<true>.


=head2 ReadWriteType => Str

  Specify if you want your trail to log read-only events, write-only
events, or all. For example, the EC2 C<GetConsoleOutput> is a read-only
API operation and C<RunInstances> is a write-only API operation.

By default, the value is C<All>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

