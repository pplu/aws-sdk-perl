
package Paws::AppConfig::GetApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Application');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetApplication - Arguments for method GetApplication on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Application = $appconfig->GetApplication(
      ApplicationId => 'MyId',

    );

    # Results:
    my $Description = $Application->Description;
    my $Id          = $Application->Id;
    my $Name        = $Application->Name;

    # Returns a L<Paws::AppConfig::Application> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

