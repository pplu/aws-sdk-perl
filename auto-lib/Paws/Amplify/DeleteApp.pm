
package Paws::Amplify::DeleteApp;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::DeleteAppResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteApp - Arguments for method DeleteApp on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApp on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method DeleteApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApp.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $DeleteAppResult = $amplify->DeleteApp(
      AppId => 'MyAppId',

    );

    # Results:
    my $App = $DeleteAppResult->App;

    # Returns a L<Paws::Amplify::DeleteAppResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/DeleteApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApp in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

