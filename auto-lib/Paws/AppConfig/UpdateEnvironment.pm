
package Paws::AppConfig::UpdateEnvironment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentId', required => 1);
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Monitor]');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/environments/{EnvironmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Environment');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Environment = $appconfig->UpdateEnvironment(
      ApplicationId => 'MyId',
      EnvironmentId => 'MyId',
      Description   => 'MyDescription',    # OPTIONAL
      Monitors      => [
        {
          AlarmArn     => 'MyArn',         # min: 20, max: 2048; OPTIONAL
          AlarmRoleArn => 'MyArn',         # min: 20, max: 2048; OPTIONAL
        },
        ...
      ],                                   # OPTIONAL
      Name => 'MyName',                    # OPTIONAL
    );

    # Results:
    my $ApplicationId = $Environment->ApplicationId;
    my $Description   = $Environment->Description;
    my $Id            = $Environment->Id;
    my $Monitors      = $Environment->Monitors;
    my $Name          = $Environment->Name;
    my $State         = $Environment->State;

    # Returns a L<Paws::AppConfig::Environment> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 Description => Str

A description of the environment.



=head2 B<REQUIRED> EnvironmentId => Str

The environment ID.



=head2 Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]

Amazon CloudWatch alarms to monitor during the deployment process.



=head2 Name => Str

The name of the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

