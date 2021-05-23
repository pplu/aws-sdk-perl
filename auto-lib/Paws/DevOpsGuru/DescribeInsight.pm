
package Paws::DevOpsGuru::DescribeInsight;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInsight');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeInsightResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeInsight - Arguments for method DescribeInsight on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInsight on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeInsight.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInsight.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeInsightResponse = $devops -guru->DescribeInsight(
      Id => 'MyInsightId',

    );

    # Results:
    my $ProactiveInsight = $DescribeInsightResponse->ProactiveInsight;
    my $ReactiveInsight  = $DescribeInsightResponse->ReactiveInsight;

    # Returns a L<Paws::DevOpsGuru::DescribeInsightResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeInsight>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the insight.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInsight in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

