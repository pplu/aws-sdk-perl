
package Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatus;
  use Moose;
  has AccountAssignmentDeletionRequestId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountAssignmentDeletionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatus - Arguments for method DescribeAccountAssignmentDeletionStatus on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountAssignmentDeletionStatus on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method DescribeAccountAssignmentDeletionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountAssignmentDeletionStatus.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $DescribeAccountAssignmentDeletionStatusResponse =
      $sso->DescribeAccountAssignmentDeletionStatus(
      AccountAssignmentDeletionRequestId => 'MyUUId',
      InstanceArn                        => 'MyInstanceArn',

      );

    # Results:
    my $AccountAssignmentDeletionStatus =
      $DescribeAccountAssignmentDeletionStatusResponse
      ->AccountAssignmentDeletionStatus;

# Returns a L<Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/DescribeAccountAssignmentDeletionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountAssignmentDeletionRequestId => Str

The identifier that is used to track the request operation progress.



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountAssignmentDeletionStatus in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

