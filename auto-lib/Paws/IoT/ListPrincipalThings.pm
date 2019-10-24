
package Paws::IoT::ListPrincipalThings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Principal => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListPrincipalThings');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/principals/things');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListPrincipalThingsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Principal' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInHeader' => {
                       'Principal' => 'x-amzn-principal'
                     },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults'
                    },
  'IsRequired' => {
                    'Principal' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPrincipalThings - Arguments for method ListPrincipalThings on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrincipalThings on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListPrincipalThings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrincipalThings.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListPrincipalThingsResponse = $iot->ListPrincipalThings(
      Principal  => 'MyPrincipal',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPrincipalThingsResponse->NextToken;
    my $Things    = $ListPrincipalThingsResponse->Things;

    # Returns a L<Paws::IoT::ListPrincipalThingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListPrincipalThings>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 B<REQUIRED> Principal => Str

The principal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrincipalThings in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

