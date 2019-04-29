
package Paws::SSM::DescribeMaintenanceWindowsForTarget;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceWindowsForTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeMaintenanceWindowsForTargetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowsForTarget - Arguments for method DescribeMaintenanceWindowsForTarget on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMaintenanceWindowsForTarget on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeMaintenanceWindowsForTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMaintenanceWindowsForTarget.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeMaintenanceWindowsForTargetResult =
      $ssm->DescribeMaintenanceWindowsForTarget(
      ResourceType => 'INSTANCE',
      Targets      => [
        {
          Key => 'MyTargetKey',                  # min: 1, max: 128; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeMaintenanceWindowsForTargetResult->NextToken;
    my $WindowIdentities =
      $DescribeMaintenanceWindowsForTargetResult->WindowIdentities;

    # Returns a L<Paws::SSM::DescribeMaintenanceWindowsForTargetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeMaintenanceWindowsForTarget>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> ResourceType => Str

The type of resource you want to retrieve information about. For
example, "INSTANCE".

Valid values are: C<"INSTANCE">

=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::SSM::Target>]

The instance ID or key/value pair to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMaintenanceWindowsForTarget in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

