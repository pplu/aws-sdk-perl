
package Paws::S3Outposts::DeleteEndpoint;
  use Moose;
  has EndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endpointId', required => 1);
  has OutpostId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'outpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/S3Outposts/DeleteEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::DeleteEndpoint - Arguments for method DeleteEndpoint on L<Paws::S3Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEndpoint on the
L<Amazon S3 on Outposts|Paws::S3Outposts> service. Use the attributes of this class
as arguments to method DeleteEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEndpoint.

=head1 SYNOPSIS

    my $s3-outposts = Paws->service('S3Outposts');
    $s3 -outposts->DeleteEndpoint(
      EndpointId => 'MyEndpointId',
      OutpostId  => 'MyOutpostId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-outposts/DeleteEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointId => Str

The ID of the end point.



=head2 B<REQUIRED> OutpostId => Str

The ID of the AWS Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEndpoint in L<Paws::S3Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

