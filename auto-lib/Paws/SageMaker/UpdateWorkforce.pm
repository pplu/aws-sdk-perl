
package Paws::SageMaker::UpdateWorkforce;
  use Moose;
  has SourceIpConfig => (is => 'ro', isa => 'Paws::SageMaker::SourceIpConfig');
  has WorkforceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkforce');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateWorkforceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateWorkforce - Arguments for method UpdateWorkforce on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkforce on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateWorkforce.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkforce.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateWorkforceResponse = $api . sagemaker->UpdateWorkforce(
      WorkforceName  => 'MyWorkforceName',
      SourceIpConfig => {
        Cidrs => [
          'MyCidr', ...    # min: 4, max: 64
        ],

      },    # OPTIONAL
    );

    # Results:
    my $Workforce = $UpdateWorkforceResponse->Workforce;

    # Returns a L<Paws::SageMaker::UpdateWorkforceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateWorkforce>

=head1 ATTRIBUTES


=head2 SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>

A list of one to four worker IP address ranges (CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html))
that can be used to access tasks assigned to this workforce.

Maximum: 4 CIDR values



=head2 B<REQUIRED> WorkforceName => Str

The name of the private workforce whose access you want to restrict.
C<WorkforceName> is automatically set to C<"default"> when a workforce
is created and cannot be modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkforce in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

