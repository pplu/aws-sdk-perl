
package Paws::GreengrassV2::DescribeComponentResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName');
  has ComponentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentVersion');
  has CreationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimestamp');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Platforms => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::ComponentPlatform]', traits => ['NameInRequest'], request_name => 'platforms');
  has Publisher => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publisher');
  has Status => (is => 'ro', isa => 'Paws::GreengrassV2::CloudComponentStatus', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::GreengrassV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::DescribeComponentResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the component version.


=head2 ComponentName => Str

The name of the component.


=head2 ComponentVersion => Str

The version of the component.


=head2 CreationTimestamp => Str

The time at which the component was created, expressed in ISO 8601
format.


=head2 Description => Str

The description of the component version.


=head2 Platforms => ArrayRef[L<Paws::GreengrassV2::ComponentPlatform>]

The platforms that the component version supports.


=head2 Publisher => Str

The publisher of the component version.


=head2 Status => L<Paws::GreengrassV2::CloudComponentStatus>

The status of the component version in AWS IoT Greengrass V2. This
status is different from the status of the component on a core device.


=head2 Tags => L<Paws::GreengrassV2::TagMap>

A list of key-value pairs that contain metadata for the resource. For
more information, see Tag your resources
(https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html)
in the I<AWS IoT Greengrass V2 Developer Guide>.


=head2 _request_id => Str


=cut

