package Paws::Config::ConfigurationItem;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', xmlname => 'accountId', request_name => 'accountId', traits => ['Unwrapped','NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', request_name => 'availabilityZone', traits => ['Unwrapped','NameInRequest']);
  has AwsRegion => (is => 'ro', isa => 'Str', xmlname => 'awsRegion', request_name => 'awsRegion', traits => ['Unwrapped','NameInRequest']);
  has Configuration => (is => 'ro', isa => 'Str', xmlname => 'configuration', request_name => 'configuration', traits => ['Unwrapped','NameInRequest']);
  has ConfigurationItemCaptureTime => (is => 'ro', isa => 'Str', xmlname => 'configurationItemCaptureTime', request_name => 'configurationItemCaptureTime', traits => ['Unwrapped','NameInRequest']);
  has ConfigurationItemMD5Hash => (is => 'ro', isa => 'Str', xmlname => 'configurationItemMD5Hash', request_name => 'configurationItemMD5Hash', traits => ['Unwrapped','NameInRequest']);
  has ConfigurationItemStatus => (is => 'ro', isa => 'Str', xmlname => 'configurationItemStatus', request_name => 'configurationItemStatus', traits => ['Unwrapped','NameInRequest']);
  has ConfigurationStateId => (is => 'ro', isa => 'Str', xmlname => 'configurationStateId', request_name => 'configurationStateId', traits => ['Unwrapped','NameInRequest']);
  has RelatedEvents => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'relatedEvents', request_name => 'relatedEvents', traits => ['Unwrapped','NameInRequest']);
  has Relationships => (is => 'ro', isa => 'ArrayRef[Paws::Config::Relationship]', xmlname => 'relationships', request_name => 'relationships', traits => ['Unwrapped','NameInRequest']);
  has ResourceCreationTime => (is => 'ro', isa => 'Str', xmlname => 'resourceCreationTime', request_name => 'resourceCreationTime', traits => ['Unwrapped','NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', xmlname => 'resourceId', request_name => 'resourceId', traits => ['Unwrapped','NameInRequest']);
  has ResourceName => (is => 'ro', isa => 'Str', xmlname => 'resourceName', request_name => 'resourceName', traits => ['Unwrapped','NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', xmlname => 'resourceType', request_name => 'resourceType', traits => ['Unwrapped','NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Config::Tags', xmlname => 'tags', request_name => 'tags', traits => ['Unwrapped','NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', xmlname => 'version', request_name => 'version', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigurationItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigurationItem object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

A list that contains detailed configurations of a specified resource.

Currently, the list does not contain information about non-AWS
components (for example, applications on your Amazon EC2 instances).

=head1 ATTRIBUTES

=head2 AccountId => Str

  The 12 digit AWS account ID associated with the resource.

=head2 Arn => Str

  The Amazon Resource Name (ARN) of the resource.

=head2 AvailabilityZone => Str

  The Availability Zone associated with the resource.

=head2 AwsRegion => Str

  The region where the resource resides.

=head2 Configuration => Str

  The description of the resource configuration.

=head2 ConfigurationItemCaptureTime => Str

  The time when the configuration recording was initiated.

=head2 ConfigurationItemMD5Hash => Str

  Unique MD5 hash that represents the configuration item's state.

You can use MD5 hash to compare the states of two or more configuration
items that are associated with the same resource.

=head2 ConfigurationItemStatus => Str

  The configuration item status.

=head2 ConfigurationStateId => Str

  An identifier that indicates the ordering of the configuration items of
a resource.

=head2 RelatedEvents => ArrayRef[Str]

  A list of CloudTrail event IDs.

A populated field indicates that the current configuration was
initiated by the events recorded in the CloudTrail log. For more
information about CloudTrail, see What is AWS CloudTrail?.

An empty field indicates that the current configuration was not
initiated by any event.

=head2 Relationships => ArrayRef[L<Paws::Config::Relationship>]

  A list of related AWS resources.

=head2 ResourceCreationTime => Str

  The time stamp when the resource was created.

=head2 ResourceId => Str

  The ID of the resource (for example., C<sg-xxxxxx>).

=head2 ResourceName => Str

  The custom name of the resource, if available.

=head2 ResourceType => Str

  The type of AWS resource.

=head2 Tags => L<Paws::Config::Tags>

  A mapping of key value tags associated with the resource.

=head2 Version => Str

  The version number of the resource configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

