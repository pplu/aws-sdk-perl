
package Paws::Glue::GetDevEndpoints;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetDevEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDevEndpoints - Arguments for method GetDevEndpoints on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevEndpoints on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetDevEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevEndpoints.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetDevEndpointsResponse = $glue->GetDevEndpoints(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $DevEndpoints = $GetDevEndpointsResponse->DevEndpoints;
    my $NextToken    = $GetDevEndpointsResponse->NextToken;

    # Returns a L<Paws::Glue::GetDevEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetDevEndpoints>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of information to return.



=head2 NextToken => Str

A continuation token, if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevEndpoints in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

