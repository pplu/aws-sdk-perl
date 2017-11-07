package Paws::CloudTrail::Resource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::Resource object:

  $service_obj->Method(Att1 => { ResourceName => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceName

=head1 DESCRIPTION

Specifies the type and name of a resource referenced by an event.

=head1 ATTRIBUTES


=head2 ResourceName => Str

  The name of the resource referenced by the event returned. These are
user-created names whose values will depend on the environment. For
example, the resource name might be "auto-scaling-test-group" for an
Auto Scaling Group or "i-1234567" for an EC2 Instance.


=head2 ResourceType => Str

  The type of a resource referenced by the event returned. When the
resource type cannot be determined, null is returned. Some examples of
resource types are: B<Instance> for EC2, B<Trail> for CloudTrail,
B<DBInstance> for RDS, and B<AccessKey> for IAM. For a list of resource
types supported for event lookup, see Resource Types Supported for
Event Lookup
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/lookup_supported_resourcetypes.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

