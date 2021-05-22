
package Paws::Lambda::GetLayerVersionByArn;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLayerVersionByArn');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-10-31/layers?find=LayerVersion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetLayerVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetLayerVersionByArn - Arguments for method GetLayerVersionByArn on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLayerVersionByArn on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetLayerVersionByArn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLayerVersionByArn.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To get information about a Lambda layer version
    # The following example returns information about the layer version with the
    # specified Amazon Resource Name (ARN).
    my $GetLayerVersionResponse = $lambda->GetLayerVersionByArn( 'Arn' =>
        'arn:aws:lambda:ca-central-1:123456789012:layer:blank-python-lib:3' );

    # Results:
    my $CompatibleRuntimes = $GetLayerVersionResponse->CompatibleRuntimes;
    my $Content            = $GetLayerVersionResponse->Content;
    my $CreatedDate        = $GetLayerVersionResponse->CreatedDate;
    my $Description        = $GetLayerVersionResponse->Description;
    my $LayerArn           = $GetLayerVersionResponse->LayerArn;
    my $LayerVersionArn    = $GetLayerVersionResponse->LayerVersionArn;
    my $Version            = $GetLayerVersionResponse->Version;

    # Returns a L<Paws::Lambda::GetLayerVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetLayerVersionByArn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the layer version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLayerVersionByArn in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

