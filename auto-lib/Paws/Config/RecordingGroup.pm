package Paws::Config::RecordingGroup;
  use Moose;
  has AllSupported => (is => 'ro', isa => 'Bool', request_name => 'allSupported', traits => ['NameInRequest']);
  has IncludeGlobalResourceTypes => (is => 'ro', isa => 'Bool', request_name => 'includeGlobalResourceTypes', traits => ['NameInRequest']);
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'resourceTypes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RecordingGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RecordingGroup object:

  $service_obj->Method(Att1 => { AllSupported => $value, ..., ResourceTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RecordingGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AllSupported

=head1 DESCRIPTION

Specifies the types of AWS resource for which AWS Config records
configuration changes.

In the recording group, you specify whether all supported types or
specific types of resources are recorded.

By default, AWS Config records configuration changes for all supported
types of regional resources that AWS Config discovers in the region in
which it is running. Regional resources are tied to a region and can be
used only in that region. Examples of regional resources are EC2
instances and EBS volumes.

You can also have AWS Config record configuration changes for supported
types of global resources (for example, IAM resources). Global
resources are not tied to an individual region and can be used in all
regions.

The configuration details for any global resource are the same in all
regions. If you customize AWS Config in multiple regions to record
global resources, it will create multiple configuration items each time
a global resource changes: one configuration item for each region.
These configuration items will contain identical data. To prevent
duplicate configuration items, you should consider customizing AWS
Config in only one region to record global resources, unless you want
the configuration items to be available in multiple regions.

If you don't want AWS Config to record all resources, you can specify
which types of resources it will record with the C<resourceTypes>
parameter.

For a list of supported resource types, see Supported Resource Types
(http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

For more information, see Selecting Which Resources AWS Config Records
(http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).

=head1 ATTRIBUTES


=head2 AllSupported => Bool

  Specifies whether AWS Config records configuration changes for every
supported type of regional resource.

If you set this option to C<true>, when AWS Config adds support for a
new type of regional resource, it starts recording resources of that
type automatically.

If you set this option to C<true>, you cannot enumerate a list of
C<resourceTypes>.


=head2 IncludeGlobalResourceTypes => Bool

  Specifies whether AWS Config includes all supported types of global
resources (for example, IAM resources) with the resources that it
records.

Before you can set this option to C<true>, you must set the
C<allSupported> option to C<true>.

If you set this option to C<true>, when AWS Config adds support for a
new type of global resource, it starts recording resources of that type
automatically.

The configuration details for any global resource are the same in all
regions. To prevent duplicate configuration items, you should consider
customizing AWS Config in only one region to record global resources.


=head2 ResourceTypes => ArrayRef[Str|Undef]

  A comma-separated list that specifies the types of AWS resources for
which AWS Config records configuration changes (for example,
C<AWS::EC2::Instance> or C<AWS::CloudTrail::Trail>).

Before you can set this option to C<true>, you must set the
C<allSupported> option to C<false>.

If you set this option to C<true>, when AWS Config adds support for a
new type of resource, it will not record resources of that type unless
you manually add that type to your recording group.

For a list of valid C<resourceTypes> values, see the B<resourceType
Value> column in Supported AWS Resource Types
(http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

