
package Paws::DevOpsGuru::DescribeAnomaly;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnomaly');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/anomalies/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeAnomalyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeAnomaly - Arguments for method DescribeAnomaly on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAnomaly on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeAnomaly.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAnomaly.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeAnomalyResponse = $devops -guru->DescribeAnomaly(
      Id => 'MyAnomalyId',

    );

    # Results:
    my $ProactiveAnomaly = $DescribeAnomalyResponse->ProactiveAnomaly;
    my $ReactiveAnomaly  = $DescribeAnomalyResponse->ReactiveAnomaly;

    # Returns a L<Paws::DevOpsGuru::DescribeAnomalyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeAnomaly>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the anomaly.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAnomaly in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

