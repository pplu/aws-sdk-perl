
package Paws::Comprehend::ListEndpoints;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Comprehend::EndpointFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ListEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEndpoints - Arguments for method ListEndpoints on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpoints on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpoints.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListEndpointsResponse = $comprehend->ListEndpoints(
      Filter => {
        CreationTimeAfter  => '1970-01-01T01:00:00',     # OPTIONAL
        CreationTimeBefore => '1970-01-01T01:00:00',     # OPTIONAL
        ModelArn           => 'MyComprehendModelArn',    # max: 256; OPTIONAL
        Status             => 'CREATING'
        ,   # values: CREATING, DELETING, FAILED, IN_SERVICE, UPDATING; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EndpointPropertiesList = $ListEndpointsResponse->EndpointPropertiesList;
    my $NextToken              = $ListEndpointsResponse->NextToken;

    # Returns a L<Paws::Comprehend::ListEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListEndpoints>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Comprehend::EndpointFilter>

Filters the endpoints that are returned. You can filter endpoints on
their name, model, status, or the date and time that they were created.
You can only set one filter at a time.



=head2 MaxResults => Int

The maximum number of results to return in each page. The default is
100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpoints in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

