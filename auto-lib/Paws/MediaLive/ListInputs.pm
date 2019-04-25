
package Paws::MediaLive::ListInputs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInputs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::ListInputsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputs - Arguments for method ListInputs on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInputs on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method ListInputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInputs.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $ListInputsResponse = $medialive->ListInputs(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Inputs    = $ListInputsResponse->Inputs;
    my $NextToken = $ListInputsResponse->NextToken;

    # Returns a L<Paws::MediaLive::ListInputsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/ListInputs>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInputs in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

