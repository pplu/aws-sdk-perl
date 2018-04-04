package Paws::FMS::PolicySummary;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has RemediationEnabled => (is => 'ro', isa => 'Bool');
  has ResourceType => (is => 'ro', isa => 'Str');
  has SecurityServiceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PolicySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::PolicySummary object:

  $service_obj->Method(Att1 => { PolicyArn => $value, ..., SecurityServiceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::PolicySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyArn

=head1 DESCRIPTION

Details of the AWS Firewall Manager policy.

=head1 ATTRIBUTES


=head2 PolicyArn => Str

  The Amazon Resource Name (ARN) of the specified policy.


=head2 PolicyId => Str

  The ID of the specified policy.


=head2 PolicyName => Str

  The friendly name of the specified policy.


=head2 RemediationEnabled => Bool

  Indicates if the policy should be automatically applied to new
resources.


=head2 ResourceType => Str

  The type of resource to protect with the policy, either an Application
Load Balancer or a CloudFront distribution. This is in the format shown
in AWS Resource Types Reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
Valid values are C<AWS::ElasticLoadBalancingV2::LoadBalancer> or
C<AWS::CloudFront::Distribution>.


=head2 SecurityServiceType => Str

  The service that the policy is using to protect the resources. This
value is C<WAF>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

