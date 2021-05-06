
package Paws::WorkSpaces::DescribeAccount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeAccountResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeAccount - Arguments for method DescribeAccount on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccount on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccount.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeAccountResult = $workspaces->DescribeAccount();

    # Results:
    my $DedicatedTenancyManagementCidrRange =
      $DescribeAccountResult->DedicatedTenancyManagementCidrRange;
    my $DedicatedTenancySupport =
      $DescribeAccountResult->DedicatedTenancySupport;

    # Returns a L<Paws::WorkSpaces::DescribeAccountResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeAccount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccount in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

