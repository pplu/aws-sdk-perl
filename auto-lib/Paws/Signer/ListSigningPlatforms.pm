
package Paws::Signer::ListSigningPlatforms;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'category');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Partner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'partner');
  has Target => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'target');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningPlatforms');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-platforms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::ListSigningPlatformsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningPlatforms - Arguments for method ListSigningPlatforms on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSigningPlatforms on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method ListSigningPlatforms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSigningPlatforms.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $ListSigningPlatformsResponse = $signer->ListSigningPlatforms(
      Category   => 'MyString',    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      Partner    => 'MyString',    # OPTIONAL
      Target     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSigningPlatformsResponse->NextToken;
    my $Platforms = $ListSigningPlatformsResponse->Platforms;

    # Returns a L<Paws::Signer::ListSigningPlatformsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/ListSigningPlatforms>

=head1 ATTRIBUTES


=head2 Category => Str

The category type of a signing platform.



=head2 MaxResults => Int

The maximum number of results to be returned by this operation.



=head2 NextToken => Str

Value for specifying the next set of paginated results to return. After
you receive a response with truncated results, use this parameter in a
subsequent request. Set it to the value of C<nextToken> from the
response that you just received.



=head2 Partner => Str

Any partner entities connected to a signing platform.



=head2 Target => Str

The validation template that is used by the target signing platform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSigningPlatforms in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

