
package Paws::MWAA::CreateWebLoginToken;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebLoginToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/webtoken/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::CreateWebLoginTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateWebLoginToken - Arguments for method CreateWebLoginToken on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebLoginToken on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method CreateWebLoginToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebLoginToken.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $CreateWebLoginTokenResponse = $airflow->CreateWebLoginToken(
      Name => 'MyEnvironmentName',

    );

    # Results:
    my $WebServerHostname = $CreateWebLoginTokenResponse->WebServerHostname;
    my $WebToken          = $CreateWebLoginTokenResponse->WebToken;

    # Returns a L<Paws::MWAA::CreateWebLoginTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/CreateWebLoginToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Create an Airflow Web UI login token request for a MWAA environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebLoginToken in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

