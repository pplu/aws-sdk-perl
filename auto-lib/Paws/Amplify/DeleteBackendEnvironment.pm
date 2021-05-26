
package Paws::Amplify::DeleteBackendEnvironment;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackendEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/backendenvironments/{environmentName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::DeleteBackendEnvironmentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteBackendEnvironment - Arguments for method DeleteBackendEnvironment on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackendEnvironment on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method DeleteBackendEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackendEnvironment.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $DeleteBackendEnvironmentResult = $amplify->DeleteBackendEnvironment(
      AppId           => 'MyAppId',
      EnvironmentName => 'MyEnvironmentName',

    );

    # Results:
    my $BackendEnvironment =
      $DeleteBackendEnvironmentResult->BackendEnvironment;

    # Returns a L<Paws::Amplify::DeleteBackendEnvironmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/DeleteBackendEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id of an Amplify App.



=head2 B<REQUIRED> EnvironmentName => Str

Name of a backend environment of an Amplify App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackendEnvironment in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

