
package Paws::FinspaceData::GetProgrammaticAccessCredentials;
  use Moose;
  has DurationInMinutes => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'durationInMinutes');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProgrammaticAccessCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/credentials/programmatic');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::GetProgrammaticAccessCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetProgrammaticAccessCredentials - Arguments for method GetProgrammaticAccessCredentials on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProgrammaticAccessCredentials on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method GetProgrammaticAccessCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProgrammaticAccessCredentials.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $GetProgrammaticAccessCredentialsResponse =
      $finspace -api->GetProgrammaticAccessCredentials(
      EnvironmentId     => 'MyIdType',
      DurationInMinutes => 1,            # OPTIONAL
      );

    # Results:
    my $Credentials = $GetProgrammaticAccessCredentialsResponse->Credentials;
    my $DurationInMinutes =
      $GetProgrammaticAccessCredentialsResponse->DurationInMinutes;

# Returns a L<Paws::FinspaceData::GetProgrammaticAccessCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/GetProgrammaticAccessCredentials>

=head1 ATTRIBUTES


=head2 DurationInMinutes => Int

The time duration in which the credentials remain valid.



=head2 B<REQUIRED> EnvironmentId => Str

The habanero environment identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProgrammaticAccessCredentials in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

