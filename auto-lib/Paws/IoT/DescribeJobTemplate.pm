
package Paws::IoT::DescribeJobTemplate;
  use Moose;
  has JobTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobTemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/job-templates/{jobTemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobTemplate - Arguments for method DescribeJobTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeJobTemplateResponse = $iot->DescribeJobTemplate(
      JobTemplateId => 'MyJobTemplateId',

    );

    # Results:
    my $AbortConfig    = $DescribeJobTemplateResponse->AbortConfig;
    my $CreatedAt      = $DescribeJobTemplateResponse->CreatedAt;
    my $Description    = $DescribeJobTemplateResponse->Description;
    my $Document       = $DescribeJobTemplateResponse->Document;
    my $DocumentSource = $DescribeJobTemplateResponse->DocumentSource;
    my $JobExecutionsRolloutConfig =
      $DescribeJobTemplateResponse->JobExecutionsRolloutConfig;
    my $JobTemplateArn     = $DescribeJobTemplateResponse->JobTemplateArn;
    my $JobTemplateId      = $DescribeJobTemplateResponse->JobTemplateId;
    my $PresignedUrlConfig = $DescribeJobTemplateResponse->PresignedUrlConfig;
    my $TimeoutConfig      = $DescribeJobTemplateResponse->TimeoutConfig;

    # Returns a L<Paws::IoT::DescribeJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeJobTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobTemplateId => Str

The unique identifier of the job template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

