package Paws::FMS::PolicyComplianceDetail;
  use Moose;
  has EvaluationLimitExceeded => (is => 'ro', isa => 'Bool');
  has ExpiredAt => (is => 'ro', isa => 'Str');
  has IssueInfoMap => (is => 'ro', isa => 'Paws::FMS::IssueInfoMap');
  has MemberAccount => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyOwner => (is => 'ro', isa => 'Str');
  has Violators => (is => 'ro', isa => 'ArrayRef[Paws::FMS::ComplianceViolator]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PolicyComplianceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::PolicyComplianceDetail object:

  $service_obj->Method(Att1 => { EvaluationLimitExceeded => $value, ..., Violators => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::PolicyComplianceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->EvaluationLimitExceeded

=head1 DESCRIPTION

Describes the non-compliant resources in a member account for a
specific AWS Firewall Manager policy. A maximum of 100 entries are
displayed. If more than 100 resources are non-compliant,
C<EvaluationLimitExceeded> is set to C<True>.

=head1 ATTRIBUTES


=head2 EvaluationLimitExceeded => Bool

  Indicates if over 100 resources are non-compliant with the AWS Firewall
Manager policy.


=head2 ExpiredAt => Str

  A time stamp that indicates when the returned information should be
considered out-of-date.


=head2 IssueInfoMap => L<Paws::FMS::IssueInfoMap>

  Details about problems with dependent services, such as AWS WAF or AWS
Config, that are causing a resource to be non-compliant. The details
include the name of the dependent service and the error message
received that indicates the problem with the service.


=head2 MemberAccount => Str

  The AWS account ID.


=head2 PolicyId => Str

  The ID of the AWS Firewall Manager policy.


=head2 PolicyOwner => Str

  The AWS account that created the AWS Firewall Manager policy.


=head2 Violators => ArrayRef[L<Paws::FMS::ComplianceViolator>]

  An array of resources that are not protected by the policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

