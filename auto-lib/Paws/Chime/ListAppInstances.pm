
package Paws::Chime::ListAppInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListAppInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAppInstances - Arguments for method ListAppInstances on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppInstances on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListAppInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppInstances.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListAppInstancesResponse = $chime->ListAppInstances(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AppInstances = $ListAppInstancesResponse->AppInstances;
    my $NextToken    = $ListAppInstancesResponse->NextToken;

    # Returns a L<Paws::Chime::ListAppInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListAppInstances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of C<AppInstance>s that you want to return.



=head2 NextToken => Str

The token passed by previous API requests until you reach the maximum
number of C<AppInstance>s.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppInstances in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

