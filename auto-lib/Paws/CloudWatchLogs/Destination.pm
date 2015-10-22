package Paws::CloudWatchLogs::Destination;
  use Moose;
  has AccessPolicy => (is => 'ro', isa => 'Str', xmlname => 'accessPolicy', request_name => 'accessPolicy', traits => ['Unwrapped','NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Int', xmlname => 'creationTime', request_name => 'creationTime', traits => ['Unwrapped','NameInRequest']);
  has DestinationName => (is => 'ro', isa => 'Str', xmlname => 'destinationName', request_name => 'destinationName', traits => ['Unwrapped','NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', xmlname => 'roleArn', request_name => 'roleArn', traits => ['Unwrapped','NameInRequest']);
  has TargetArn => (is => 'ro', isa => 'Str', xmlname => 'targetArn', request_name => 'targetArn', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::Destination object:

  $service_obj->Method(Att1 => { AccessPolicy => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicy

=head1 DESCRIPTION

A cross account destination that is the recipient of subscription log
events.

=head1 ATTRIBUTES

=head2 AccessPolicy => Str

  An IAM policy document that governs which AWS accounts can create
subscription filters against this destination.

=head2 Arn => Str

  ARN of this destination.

=head2 CreationTime => Int

  A point in time expressed as the number of milliseconds since Jan 1,
1970 00:00:00 UTC specifying when this destination was created.

=head2 DestinationName => Str

  Name of the destination.

=head2 RoleArn => Str

  A role for impersonation for delivering log events to the target.

=head2 TargetArn => Str

  ARN of the physical target where the log events will be delivered (eg.
ARN of a Kinesis stream).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

