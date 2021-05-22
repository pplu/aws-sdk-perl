
package Paws::S3Outposts::ListEndpoints;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/S3Outposts/ListEndpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Outposts::ListEndpointsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::ListEndpoints - Arguments for method ListEndpoints on L<Paws::S3Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpoints on the
L<Amazon S3 on Outposts|Paws::S3Outposts> service. Use the attributes of this class
as arguments to method ListEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpoints.

=head1 SYNOPSIS

    my $s3-outposts = Paws->service('S3Outposts');
    my $ListEndpointsResult = $s3 -outposts->ListEndpoints(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Endpoints = $ListEndpointsResult->Endpoints;
    my $NextToken = $ListEndpointsResult->NextToken;

    # Returns a L<Paws::S3Outposts::ListEndpointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-outposts/ListEndpoints>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The max number of endpoints that can be returned on the request.



=head2 NextToken => Str

The next endpoint requested in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpoints in L<Paws::S3Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

