
package Paws::MediaConvert::DescribeEndpoints;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has Mode => (is => 'ro', isa => Str, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEndpoints');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2017-08-29/endpoints');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConvert::DescribeEndpointsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Mode' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'Mode' => 'mode'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DescribeEndpoints - Arguments for method DescribeEndpoints on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpoints on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method DescribeEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpoints.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $DescribeEndpointsResponse = $mediaconvert->DescribeEndpoints(
      MaxResults => 1,               # OPTIONAL
      Mode       => 'DEFAULT',       # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Endpoints = $DescribeEndpointsResponse->Endpoints;
    my $NextToken = $DescribeEndpointsResponse->NextToken;

    # Returns a L<Paws::MediaConvert::DescribeEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/DescribeEndpoints>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Optional. Max number of endpoints, up to twenty, that will be returned
at one time.



=head2 Mode => Str

Optional field, defaults to DEFAULT. Specify DEFAULT for this operation
to return your endpoints if any exist, or to create an endpoint for you
and return it if one doesn't already exist. Specify GET_ONLY to return
your endpoints if any exist, or an empty list if none exist.

Valid values are: C<"DEFAULT">, C<"GET_ONLY">

=head2 NextToken => Str

Use this string, provided with the response to a previous request, to
request the next batch of endpoints.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpoints in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

