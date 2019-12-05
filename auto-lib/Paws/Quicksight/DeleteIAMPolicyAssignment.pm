
package Paws::Quicksight::DeleteIAMPolicyAssignment;
  use Moose;
  has AssignmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AssignmentName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Namespace', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIAMPolicyAssignment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteIAMPolicyAssignmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteIAMPolicyAssignment - Arguments for method DeleteIAMPolicyAssignment on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIAMPolicyAssignment on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteIAMPolicyAssignment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIAMPolicyAssignment.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteIAMPolicyAssignmentResponse =
      $quicksight->DeleteIAMPolicyAssignment(
      AssignmentName => 'MyIAMPolicyAssignmentName',
      AwsAccountId   => 'MyAwsAccountId',
      Namespace      => 'MyNamespace',

      );

    # Results:
    my $AssignmentName = $DeleteIAMPolicyAssignmentResponse->AssignmentName;
    my $RequestId      = $DeleteIAMPolicyAssignmentResponse->RequestId;
    my $Status         = $DeleteIAMPolicyAssignmentResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteIAMPolicyAssignmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteIAMPolicyAssignment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentName => Str

The name of the assignment.



=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID where you want to delete an IAM policy assignment.



=head2 B<REQUIRED> Namespace => Str

The namespace that contains the assignment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIAMPolicyAssignment in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

