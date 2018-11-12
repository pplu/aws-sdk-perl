
package Paws::MQ::UpdateConfiguration;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuration-id', required => 1);
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations/{configuration-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::UpdateConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateConfiguration - Arguments for method UpdateConfiguration on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfiguration on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method UpdateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfiguration.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $UpdateConfigurationResponse = $mq->UpdateConfiguration(
      ConfigurationId => 'My__string',
      Data            => 'My__string',    # OPTIONAL
      Description     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn            = $UpdateConfigurationResponse->Arn;
    my $Created        = $UpdateConfigurationResponse->Created;
    my $Id             = $UpdateConfigurationResponse->Id;
    my $LatestRevision = $UpdateConfigurationResponse->LatestRevision;
    my $Name           = $UpdateConfigurationResponse->Name;
    my $Warnings       = $UpdateConfigurationResponse->Warnings;

    # Returns a L<Paws::MQ::UpdateConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/UpdateConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.



=head2 Data => Str

Required. The base64-encoded XML configuration.



=head2 Description => Str

The description of the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfiguration in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

