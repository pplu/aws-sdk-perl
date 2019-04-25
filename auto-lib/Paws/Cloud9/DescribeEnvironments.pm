
package Paws::Cloud9::DescribeEnvironments;
  use Moose;
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'environmentIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::DescribeEnvironmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironments - Arguments for method DescribeEnvironments on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironments on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method DescribeEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironments.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    my $DescribeEnvironmentsResult = $cloud9->DescribeEnvironments(
      EnvironmentIds => [ 'MyEnvironmentId', ... ],

    );

    # Results:
    my $Environments = $DescribeEnvironmentsResult->Environments;

    # Returns a L<Paws::Cloud9::DescribeEnvironmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/DescribeEnvironments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentIds => ArrayRef[Str|Undef]

The IDs of individual environments to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironments in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

