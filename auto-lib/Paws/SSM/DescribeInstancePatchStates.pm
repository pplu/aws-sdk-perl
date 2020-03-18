
package Paws::SSM::DescribeInstancePatchStates;
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstancePatchStates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeInstancePatchStatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstancePatchStates - Arguments for method DescribeInstancePatchStates on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstancePatchStates on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeInstancePatchStates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstancePatchStates.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeInstancePatchStatesResult = $ssm->DescribeInstancePatchStates(
      InstanceIds => [ 'MyInstanceId', ... ],
      MaxResults  => 1,                         # OPTIONAL
      NextToken   => 'MyNextToken',             # OPTIONAL
    );

    # Results:
    my $InstancePatchStates =
      $DescribeInstancePatchStatesResult->InstancePatchStates;
    my $NextToken = $DescribeInstancePatchStatesResult->NextToken;

    # Returns a L<Paws::SSM::DescribeInstancePatchStatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeInstancePatchStates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

The ID of the instance whose patch state information should be
retrieved.



=head2 MaxResults => Int

The maximum number of instances to return (per page).



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstancePatchStates in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

