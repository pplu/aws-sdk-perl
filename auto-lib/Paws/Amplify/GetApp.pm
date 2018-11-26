
package Paws::Amplify::GetApp;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::GetAppResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetApp - Arguments for method GetApp on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApp on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method GetApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApp.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $GetAppResult = $amplify->GetApp(
      AppId => 'MyAppId',

    );

    # Results:
    my $App = $GetAppResult->App;

    # Returns a L<Paws::Amplify::GetAppResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/GetApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApp in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

