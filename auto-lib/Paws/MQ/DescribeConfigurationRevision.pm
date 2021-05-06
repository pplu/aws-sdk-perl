
package Paws::MQ::DescribeConfigurationRevision;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuration-id', required => 1);
  has ConfigurationRevision => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuration-revision', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationRevision');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations/{configuration-id}/revisions/{configuration-revision}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::DescribeConfigurationRevisionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeConfigurationRevision - Arguments for method DescribeConfigurationRevision on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationRevision on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method DescribeConfigurationRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationRevision.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $DescribeConfigurationRevisionResponse =
      $mq->DescribeConfigurationRevision(
      ConfigurationId       => 'My__string',
      ConfigurationRevision => 'My__string',

      );

    # Results:
    my $ConfigurationId =
      $DescribeConfigurationRevisionResponse->ConfigurationId;
    my $Created     = $DescribeConfigurationRevisionResponse->Created;
    my $Data        = $DescribeConfigurationRevisionResponse->Data;
    my $Description = $DescribeConfigurationRevisionResponse->Description;

    # Returns a L<Paws::MQ::DescribeConfigurationRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/DescribeConfigurationRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.



=head2 B<REQUIRED> ConfigurationRevision => Str

The revision of the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationRevision in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

