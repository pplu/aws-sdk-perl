package Paws::FMS::PolicyComplianceStatus;
  use Moose;
  has EvaluationResults => (is => 'ro', isa => 'ArrayRef[Paws::FMS::EvaluationResult]');
  has IssueInfoMap => (is => 'ro', isa => 'Paws::FMS::IssueInfoMap');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has MemberAccount => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyOwner => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PolicyComplianceStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::PolicyComplianceStatus object:

  $service_obj->Method(Att1 => { EvaluationResults => $value, ..., PolicyOwner => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::PolicyComplianceStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->EvaluationResults

=head1 DESCRIPTION

Indicates whether the account is compliant with the specified policy.
An account is considered non-compliant if it includes resources that
are not protected by the policy.

=head1 ATTRIBUTES


=head2 EvaluationResults => ArrayRef[L<Paws::FMS::EvaluationResult>]

  An array of C<EvaluationResult> objects.


=head2 IssueInfoMap => L<Paws::FMS::IssueInfoMap>

  Details about problems with dependent services, such as AWS WAF or AWS
Config, that are causing a resource to be non-compliant. The details
include the name of the dependent service and the error message
received that indicates the problem with the service.


=head2 LastUpdated => Str

  Time stamp of the last update to the C<EvaluationResult> objects.


=head2 MemberAccount => Str

  The member account ID.


=head2 PolicyId => Str

  The ID of the AWS Firewall Manager policy.


=head2 PolicyName => Str

  The friendly name of the AWS Firewall Manager policy.


=head2 PolicyOwner => Str

  The AWS account that created the AWS Firewall Manager policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

