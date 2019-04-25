package Paws::FMS::ComplianceViolator;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has ViolationReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ComplianceViolator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::ComplianceViolator object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., ViolationReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::ComplianceViolator object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

Details of the resource that is not protected by the policy.

=head1 ATTRIBUTES


=head2 ResourceId => Str

  The resource ID.


=head2 ResourceType => Str

  The resource type. This is in the format shown in AWS Resource Types
Reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
Valid values are C<AWS::ElasticLoadBalancingV2::LoadBalancer> or
C<AWS::CloudFront::Distribution>.


=head2 ViolationReason => Str

  The reason that the resource is not protected by the policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

