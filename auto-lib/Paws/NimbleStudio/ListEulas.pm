
package Paws::NimbleStudio::ListEulas;
  use Moose;
  has EulaIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'eulaIds');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEulas');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/eulas');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::ListEulasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListEulas - Arguments for method ListEulas on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEulas on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method ListEulas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEulas.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $ListEulasResponse = $nimble->ListEulas(
      EulaIds   => [ 'My__string', ... ],    # OPTIONAL
      NextToken => 'My__string',             # OPTIONAL
    );

    # Results:
    my $Eulas     = $ListEulasResponse->Eulas;
    my $NextToken = $ListEulasResponse->NextToken;

    # Returns a L<Paws::NimbleStudio::ListEulasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/ListEulas>

=head1 ATTRIBUTES


=head2 EulaIds => ArrayRef[Str|Undef]

A collection of EULA IDs.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEulas in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

