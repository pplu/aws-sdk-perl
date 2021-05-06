
package Paws::CloudSearch::UpdateScalingParameters;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingParameters => (is => 'ro', isa => 'Paws::CloudSearch::ScalingParameters', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScalingParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::UpdateScalingParametersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateScalingParametersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateScalingParameters - Arguments for method UpdateScalingParameters on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScalingParameters on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method UpdateScalingParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScalingParameters.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $UpdateScalingParametersResponse = $cloudsearch->UpdateScalingParameters(
      DomainName        => 'MyDomainName',
      ScalingParameters => {
        DesiredInstanceType => 'search.m1.small'
        , # values: search.m1.small, search.m1.large, search.m2.xlarge, search.m2.2xlarge, search.m3.medium, search.m3.large, search.m3.xlarge, search.m3.2xlarge; OPTIONAL
        DesiredPartitionCount   => 1,    # OPTIONAL
        DesiredReplicationCount => 1,    # OPTIONAL
      },

    );

    # Results:
    my $ScalingParameters = $UpdateScalingParametersResponse->ScalingParameters;

    # Returns a L<Paws::CloudSearch::UpdateScalingParametersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/UpdateScalingParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str





=head2 B<REQUIRED> ScalingParameters => L<Paws::CloudSearch::ScalingParameters>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScalingParameters in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

