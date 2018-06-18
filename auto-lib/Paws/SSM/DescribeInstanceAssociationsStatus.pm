
package Paws::SSM::DescribeInstanceAssociationsStatus;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAssociationsStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeInstanceAssociationsStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstanceAssociationsStatus - Arguments for method DescribeInstanceAssociationsStatus on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceAssociationsStatus on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeInstanceAssociationsStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceAssociationsStatus.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeInstanceAssociationsStatusResult =
      $ssm->DescribeInstanceAssociationsStatus(
      InstanceId => 'MyInstanceId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $InstanceAssociationStatusInfos =
      $DescribeInstanceAssociationsStatusResult->InstanceAssociationStatusInfos;
    my $NextToken = $DescribeInstanceAssociationsStatusResult->NextToken;

    # Returns a L<Paws::SSM::DescribeInstanceAssociationsStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeInstanceAssociationsStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The instance IDs for which you want association status information.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceAssociationsStatus in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

