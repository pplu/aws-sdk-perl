
package Paws::MQ::DescribeConfiguration;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuration-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations/{configuration-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::DescribeConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeConfiguration - Arguments for method DescribeConfiguration on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfiguration on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method DescribeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfiguration.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $DescribeConfigurationResponse = $mq->DescribeConfiguration(
      ConfigurationId => 'My__string',

    );

    # Results:
    my $Arn            = $DescribeConfigurationResponse->Arn;
    my $Created        = $DescribeConfigurationResponse->Created;
    my $Description    = $DescribeConfigurationResponse->Description;
    my $EngineType     = $DescribeConfigurationResponse->EngineType;
    my $EngineVersion  = $DescribeConfigurationResponse->EngineVersion;
    my $Id             = $DescribeConfigurationResponse->Id;
    my $LatestRevision = $DescribeConfigurationResponse->LatestRevision;
    my $Name           = $DescribeConfigurationResponse->Name;
    my $Tags           = $DescribeConfigurationResponse->Tags;

    # Returns a L<Paws::MQ::DescribeConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/DescribeConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfiguration in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

