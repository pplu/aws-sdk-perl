
package Paws::GroundStation::ListDataflowEndpointGroups;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GroundStation::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDataflowEndpointGroups');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/dataflowEndpointGroup');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::ListDataflowEndpointGroupsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListDataflowEndpointGroups - Arguments for method ListDataflowEndpointGroups on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataflowEndpointGroups on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ListDataflowEndpointGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataflowEndpointGroups.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ListDataflowEndpointGroupsResponse =
      $groundstation->ListDataflowEndpointGroups(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $DataflowEndpointGroupList =
      $ListDataflowEndpointGroupsResponse->DataflowEndpointGroupList;
    my $NextToken = $ListDataflowEndpointGroupsResponse->NextToken;

  # Returns a L<Paws::GroundStation::ListDataflowEndpointGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ListDataflowEndpointGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of dataflow endpoint groups returned.



=head2 NextToken => Str

Next token returned in the request of a previous
C<ListDataflowEndpointGroups> call. Used to get the next page of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataflowEndpointGroups in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

