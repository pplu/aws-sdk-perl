
package Paws::LookoutVision::DetectAnomalies;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['ParamInBody'], required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelVersion', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectAnomalies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/models/{modelVersion}/detect');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::DetectAnomaliesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DetectAnomalies - Arguments for method DetectAnomalies on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectAnomalies on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method DetectAnomalies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectAnomalies.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $DetectAnomaliesResponse = $lookoutvision->DetectAnomalies(
      Body         => 'BlobStream',
      ContentType  => 'MyContentType',
      ModelVersion => 'MyModelVersion',
      ProjectName  => 'MyProjectName',

    );

    # Results:
    my $DetectAnomalyResult = $DetectAnomaliesResponse->DetectAnomalyResult;

    # Returns a L<Paws::LookoutVision::DetectAnomaliesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/DetectAnomalies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The unencrypted image bytes that you want to analyze.



=head2 B<REQUIRED> ContentType => Str

The type of the image passed in C<Body>. Valid values are C<image/png>
(PNG format images) and C<image/jpeg> (JPG format images).



=head2 B<REQUIRED> ModelVersion => Str

The version of the model that you want to use.



=head2 B<REQUIRED> ProjectName => Str

The name of the project that contains the model version that you want
to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectAnomalies in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

