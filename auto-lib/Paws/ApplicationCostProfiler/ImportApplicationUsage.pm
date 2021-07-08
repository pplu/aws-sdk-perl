
package Paws::ApplicationCostProfiler::ImportApplicationUsage;
  use Moose;
  has SourceS3Location => (is => 'ro', isa => 'Paws::ApplicationCostProfiler::SourceS3Location', traits => ['NameInRequest'], request_name => 'sourceS3Location', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportApplicationUsage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/importApplicationUsage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationCostProfiler::ImportApplicationUsageResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::ImportApplicationUsage - Arguments for method ImportApplicationUsage on L<Paws::ApplicationCostProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportApplicationUsage on the
L<AWS Application Cost Profiler|Paws::ApplicationCostProfiler> service. Use the attributes of this class
as arguments to method ImportApplicationUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportApplicationUsage.

=head1 SYNOPSIS

    my $application-cost-profiler = Paws->service('ApplicationCostProfiler');
    my $ImportApplicationUsageResult =
      $application -cost-profiler->ImportApplicationUsage(
      SourceS3Location => {
        Bucket => 'MyS3Bucket',    # min: 3, max: 63
        Key    => 'MyS3Key',       # min: 1, max: 512
        Region => 'ap-east-1'
        ,    # values: ap-east-1, me-south-1, eu-south-1, af-south-1; OPTIONAL
      },

      );

    # Results:
    my $ImportId = $ImportApplicationUsageResult->ImportId;

# Returns a L<Paws::ApplicationCostProfiler::ImportApplicationUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-cost-profiler/ImportApplicationUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceS3Location => L<Paws::ApplicationCostProfiler::SourceS3Location>

Amazon S3 location to import application usage data from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportApplicationUsage in L<Paws::ApplicationCostProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

