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

Use event selectors to specify the types of events that you want your
trail to log. When an event occurs in your account, CloudTrail
evaluates the event selector for all trails. For each trail, if the
event matches any event selector, the trail processes and logs the
event. If the event doesn't match any event selector, the trail doesn't
log the event.

You can configure up to five event selectors for a trail.

=head1 ATTRIBUTES


=head2 DataResources => ArrayRef[L<Paws::CloudTrail::DataResource>]

  CloudTrail supports logging only data events for S3 objects. You can
specify up to 50 S3 buckets and object prefixes for an event selector.

For more information, see Data Events in the I<AWS CloudTrail User
Guide>.


=head2 IncludeManagementEvents => Bool

  Specify if you want your event selector to include management events
for your trail.

For more information, see Management Events in the I<AWS CloudTrail
User Guide>.

By default, the value is C<true>.


=head2 ReadWriteType => Str

  Specify if you want your trail to log read-only events, write-only
events, or all. For example, the EC2 C<GetConsoleOutput> is a read-only
API operation and C<RunInstances> is a write-only API operation.

By default, the value is C<All>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

