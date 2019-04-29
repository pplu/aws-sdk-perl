
package Paws::Glue::BatchGetDevEndpoints;
  use Moose;
  has DevEndpointNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDevEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchGetDevEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetDevEndpoints - Arguments for method BatchGetDevEndpoints on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDevEndpoints on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetDevEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDevEndpoints.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetDevEndpointsResponse = $glue->BatchGetDevEndpoints(
      DevEndpointNames => [ 'MyGenericString', ... ],

    );

    # Results:
    my $DevEndpoints = $BatchGetDevEndpointsResponse->DevEndpoints;
    my $DevEndpointsNotFound =
      $BatchGetDevEndpointsResponse->DevEndpointsNotFound;

    # Returns a L<Paws::Glue::BatchGetDevEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetDevEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DevEndpointNames => ArrayRef[Str|Undef]

The list of DevEndpoint names, which may be the names returned from the
C<ListDevEndpoint> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDevEndpoints in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

