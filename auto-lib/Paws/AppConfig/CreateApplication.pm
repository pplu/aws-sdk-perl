
package Paws::AppConfig::CreateApplication;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Application');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateApplication - Arguments for method CreateApplication on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Application = $appconfig->CreateApplication(
      Name        => 'MyName',
      Description => 'MyDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Description = $Application->Description;
    my $Id          = $Application->Id;
    my $Name        = $Application->Name;

    # Returns a L<Paws::AppConfig::Application> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateApplication>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the application.



=head2 B<REQUIRED> Name => Str

A name for the application.



=head2 Tags => L<Paws::AppConfig::TagMap>

Metadata to assign to the application. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

