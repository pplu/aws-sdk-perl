
package Paws::AppConfig::CreateEnvironment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Monitor]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Environment');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Environment = $appconfig->CreateEnvironment(
      ApplicationId => 'MyId',
      Name          => 'MyName',
      Description   => 'MyDescription',    # OPTIONAL
      Monitors      => [
        {
          AlarmArn     => 'MyArn',        # min: 20, max: 2048; OPTIONAL
          AlarmRoleArn => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 Description => Str

A description of the environment.



=head2 Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]

Amazon CloudWatch alarms to monitor during the deployment process.



=head2 B<REQUIRED> Name => Str

A name for the environment.



=head2 Tags => L<Paws::AppConfig::TagMap>

Metadata to assign to the environment. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

