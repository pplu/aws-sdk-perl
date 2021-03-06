
package Paws::ACM::GetAccountConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::GetAccountConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::GetAccountConfiguration - Arguments for method GetAccountConfiguration on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountConfiguration on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method GetAccountConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountConfiguration.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    my $GetAccountConfigurationResponse = $acm->GetAccountConfiguration();

    # Results:
    my $ExpiryEvents = $GetAccountConfigurationResponse->ExpiryEvents;

    # Returns a L<Paws::ACM::GetAccountConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/GetAccountConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountConfiguration in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

