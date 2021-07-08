
package Paws::GreengrassV2::CreateComponentVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName', required => 1);
  has ComponentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentVersion', required => 1);
  has CreationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimestamp', required => 1);
  has Status => (is => 'ro', isa => 'Paws::GreengrassV2::CloudComponentStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::CreateComponentVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the component version.


=head2 B<REQUIRED> ComponentName => Str

The name of the component.


=head2 B<REQUIRED> ComponentVersion => Str

The version of the component.


=head2 B<REQUIRED> CreationTimestamp => Str

The time at which the component was created, expressed in ISO 8601
format.


=head2 B<REQUIRED> Status => L<Paws::GreengrassV2::CloudComponentStatus>

The status of the component version in AWS IoT Greengrass V2. This
status is different from the status of the component on a core device.


=head2 _request_id => Str


=cut

