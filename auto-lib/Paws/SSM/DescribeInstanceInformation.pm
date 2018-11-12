
package Paws::SSM::DescribeInstanceInformation;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstanceInformationStringFilter]');
  has InstanceInformationFilterList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstanceInformationFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceInformation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeInstanceInformationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstanceInformation - Arguments for method DescribeInstanceInformation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceInformation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeInstanceInformation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceInformation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeInstanceInformationResult = $ssm->DescribeInstanceInformation(
      Filters => [
        {
          Key    => 'MyInstanceInformationStringFilterKey',    # min: 1
          Values => [
            'MyInstanceInformationFilterValue', ...            # min: 1
          ],    # min: 1, max: 100

        },
        ...
      ],        # OPTIONAL
      InstanceInformationFilterList => [
        {
          Key => 'InstanceIds'
          , # values: InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType, AssociationStatus
          ValueSet => [
            'MyInstanceInformationFilterValue', ...    # min: 1
          ],                                           # min: 1, max: 100

        },
        ...
      ],                                               # OPTIONAL
      MaxResults => 1,                                 # OPTIONAL
      NextToken  => 'MyNextToken',                     # OPTIONAL
    );

    # Results:
    my $InstanceInformationList =
      $DescribeInstanceInformationResult->InstanceInformationList;
    my $NextToken = $DescribeInstanceInformationResult->NextToken;

    # Returns a L<Paws::SSM::DescribeInstanceInformationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeInstanceInformation>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::InstanceInformationStringFilter>]

One or more filters. Use a filter to return a more specific list of
instances. You can filter on Amazon EC2 tag. Specify tags by using a
key-value mapping.



=head2 InstanceInformationFilterList => ArrayRef[L<Paws::SSM::InstanceInformationFilter>]

This is a legacy method. We recommend that you don't use this method.
Instead, use the InstanceInformationFilter action. The
C<InstanceInformationFilter> action enables you to return instance
information by using tags that are specified as a key-value mapping.

If you do use this method, then you can't use the
C<InstanceInformationFilter> action. Using this method and the
C<InstanceInformationFilter> action causes an exception error.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceInformation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

