package Paws::Config::ConfigurationItem;
  use Moose;
  has accountId => (is => 'ro', isa => 'Str');
  has arn => (is => 'ro', isa => 'Str');
  has availabilityZone => (is => 'ro', isa => 'Str');
  has awsRegion => (is => 'ro', isa => 'Str');
  has configuration => (is => 'ro', isa => 'Str');
  has configurationItemCaptureTime => (is => 'ro', isa => 'Str');
  has configurationItemMD5Hash => (is => 'ro', isa => 'Str');
  has configurationItemStatus => (is => 'ro', isa => 'Str');
  has configurationStateId => (is => 'ro', isa => 'Str');
  has relatedEvents => (is => 'ro', isa => 'ArrayRef[Str]');
  has relationships => (is => 'ro', isa => 'ArrayRef[Paws::Config::Relationship]');
  has resourceCreationTime => (is => 'ro', isa => 'Str');
  has resourceId => (is => 'ro', isa => 'Str');
  has resourceName => (is => 'ro', isa => 'Str');
  has resourceType => (is => 'ro', isa => 'Str');
  has tags => (is => 'ro', isa => 'Paws::Config::Tags');
  has version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigurationItem

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigurationItem object:

  $service_obj->Method(Att1 => { accountId => $value, ..., version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationItem object:

  $result = $service_obj->Method(...);
  $result->Att1->accountId

=head1 ATTRIBUTES

=head2 accountId => Str

  

The 12 digit AWS account ID associated with the resource.










=head2 arn => Str

  

The Amazon Resource Name (ARN) of the resource.










=head2 availabilityZone => Str

  

The Availability Zone associated with the resource.










=head2 awsRegion => Str

  

The region where the resource resides.










=head2 configuration => Str

  

The description of the resource configuration.










=head2 configurationItemCaptureTime => Str

  

The time when the configuration recording was initiated.










=head2 configurationItemMD5Hash => Str

  

Unique MD5 hash that represents the configuration item's state.

You can use MD5 hash to compare the states of two or more configuration
items that are associated with the same resource.










=head2 configurationItemStatus => Str

  

The configuration item status.










=head2 configurationStateId => Str

  

An identifier that indicates the ordering of the configuration items of
a resource.










=head2 relatedEvents => ArrayRef[Str]

  

A list of CloudTrail event IDs.

A populated field indicates that the current configuration was
initiated by the events recorded in the CloudTrail log. For more
information about CloudTrail, see What is AWS CloudTrail?.

An empty field indicates that the current configuration was not
initiated by any event.










=head2 relationships => ArrayRef[Paws::Config::Relationship]

  

A list of related AWS resources.










=head2 resourceCreationTime => Str

  

The time stamp when the resource was created.










=head2 resourceId => Str

  

The ID of the resource (for example., C<sg-xxxxxx>).










=head2 resourceName => Str

  

The custom name of the resource, if available.










=head2 resourceType => Str

  

The type of AWS resource.










=head2 tags => Paws::Config::Tags

  

A mapping of key value tags associated with the resource.










=head2 version => Str

  

The version number of the resource configuration.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

