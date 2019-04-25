
package Paws::GlobalAccelerator::ListEndpointGroups;
  use Moose;
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ListEndpointGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListEndpointGroups - Arguments for method ListEndpointGroups on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpointGroups on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ListEndpointGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpointGroups.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ListEndpointGroupsResponse = $globalaccelerator->ListEndpointGroups(
      ListenerArn => 'MyGenericString',
      MaxResults  => 1,                    # OPTIONAL
      NextToken   => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $EndpointGroups = $ListEndpointGroupsResponse->EndpointGroups;
    my $NextToken      = $ListEndpointGroupsResponse->NextToken;

    # Returns a L<Paws::GlobalAccelerator::ListEndpointGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ListEndpointGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.



=head2 MaxResults => Int

The number of endpoint group objects that you want to return with this
call. The default value is 10.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpointGroups in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

