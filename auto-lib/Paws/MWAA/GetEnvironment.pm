
package Paws::MWAA::GetEnvironment;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::GetEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::GetEnvironment - Arguments for method GetEnvironment on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironment on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method GetEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironment.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $GetEnvironmentOutput = $airflow->GetEnvironment(
      Name => 'MyEnvironmentName',

    );

    # Results:
    my $Environment = $GetEnvironmentOutput->Environment;

    # Returns a L<Paws::MWAA::GetEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/GetEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the Amazon MWAA environment. For example,
C<MyMWAAEnvironment>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironment in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

