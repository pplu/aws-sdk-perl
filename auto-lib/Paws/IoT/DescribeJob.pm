
package Paws::IoT::DescribeJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJob - Arguments for method DescribeJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeJobResponse = $iot->DescribeJob(
      JobId => 'MyJobId',

    );

    # Results:
    my $DocumentSource = $DescribeJobResponse->DocumentSource;
    my $Job            = $DescribeJobResponse->Job;

    # Returns a L<Paws::IoT::DescribeJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

