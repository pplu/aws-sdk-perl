
package Paws::Glue::GetSecurityConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSecurityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetSecurityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSecurityConfiguration - Arguments for method GetSecurityConfiguration on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSecurityConfiguration on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetSecurityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSecurityConfiguration.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetSecurityConfigurationResponse = $glue->GetSecurityConfiguration(
      Name => 'MyNameString',

    );

    # Results:
    my $SecurityConfiguration =
      $GetSecurityConfigurationResponse->SecurityConfiguration;

    # Returns a L<Paws::Glue::GetSecurityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetSecurityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the security configuration to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSecurityConfiguration in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

