
package Paws::IoTEvents::ListInputs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTEvents::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListInputs');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/inputs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEvents::ListInputsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListInputs - Arguments for method ListInputs on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInputs on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method ListInputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInputs.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $ListInputsResponse = $iotevents->ListInputs(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $InputSummaries = $ListInputsResponse->InputSummaries;
    my $NextToken      = $ListInputsResponse->NextToken;

    # Returns a L<Paws::IoTEvents::ListInputsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/ListInputs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInputs in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

