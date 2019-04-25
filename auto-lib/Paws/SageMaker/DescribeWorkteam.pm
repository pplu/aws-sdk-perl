
package Paws::SageMaker::DescribeWorkteam;
  use Moose;
  has WorkteamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkteam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeWorkteamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeWorkteam - Arguments for method DescribeWorkteam on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkteam on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeWorkteam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkteam.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeWorkteamResponse = $api . sagemaker->DescribeWorkteam(
      WorkteamName => 'MyWorkteamName',

    );

    # Results:
    my $Workteam = $DescribeWorkteamResponse->Workteam;

    # Returns a L<Paws::SageMaker::DescribeWorkteamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeWorkteam>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkteamName => Str

The name of the work team to return a description of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkteam in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

