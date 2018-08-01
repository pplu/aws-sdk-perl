package Paws::FMS::EvaluationResult;
  use Moose;
  has ComplianceStatus => (is => 'ro', isa => 'Str');
  has EvaluationLimitExceeded => (is => 'ro', isa => 'Bool');
  has ViolatorCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::EvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::EvaluationResult object:

  $service_obj->Method(Att1 => { ComplianceStatus => $value, ..., ViolatorCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::EvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceStatus

=head1 DESCRIPTION

Describes the compliance status for the account. An account is
considered noncompliant if it includes resources that are not protected
by the specified policy or that don't comply with the policy.

=head1 ATTRIBUTES


=head2 ComplianceStatus => Str

  Describes an AWS account's compliance with the AWS Firewall Manager
policy.


=head2 EvaluationLimitExceeded => Bool

  Indicates that over 100 resources are noncompliant with the AWS
Firewall Manager policy.


=head2 ViolatorCount => Int

  The number of resources that are noncompliant with the specified
policy. For AWS WAF and Shield Advanced policies, a resource is
considered noncompliant if it is not associated with the policy. For
security group policies, a resource is considered noncompliant if it
doesn't comply with the rules of the policy and remediation is disabled
or not possible.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

