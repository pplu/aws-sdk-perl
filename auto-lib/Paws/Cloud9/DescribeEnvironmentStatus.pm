
package Paws::Cloud9::DescribeEnvironmentStatus;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::DescribeEnvironmentStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentStatus - Arguments for method DescribeEnvironmentStatus on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentStatus on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method DescribeEnvironmentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentStatus.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    # DescribeEnvironmentStatus
    my $DescribeEnvironmentStatusResult = $cloud9->DescribeEnvironmentStatus(
      'EnvironmentId' => '8d9967e2f0624182b74e7690ad69ebEX' );

    # Results:
    my $message = $DescribeEnvironmentStatusResult->message;
    my $status  = $DescribeEnvironmentStatusResult->status;

    # Returns a L<Paws::Cloud9::DescribeEnvironmentStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/DescribeEnvironmentStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment to get status information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentStatus in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

