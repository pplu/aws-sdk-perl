
package Paws::DevOpsGuru::DescribeAccountHealth;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountHealth');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/health');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeAccountHealthResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeAccountHealth - Arguments for method DescribeAccountHealth on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountHealth on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeAccountHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountHealth.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeAccountHealthResponse = $devops -guru->DescribeAccountHealth();

    # Results:
    my $MetricsAnalyzed = $DescribeAccountHealthResponse->MetricsAnalyzed;
    my $OpenProactiveInsights =
      $DescribeAccountHealthResponse->OpenProactiveInsights;
    my $OpenReactiveInsights =
      $DescribeAccountHealthResponse->OpenReactiveInsights;
    my $ResourceHours = $DescribeAccountHealthResponse->ResourceHours;

    # Returns a L<Paws::DevOpsGuru::DescribeAccountHealthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeAccountHealth>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountHealth in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

