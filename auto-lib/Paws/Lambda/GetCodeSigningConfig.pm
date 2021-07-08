
package Paws::Lambda::GetCodeSigningConfig;
  use Moose;
  has CodeSigningConfigArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CodeSigningConfigArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCodeSigningConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-04-22/code-signing-configs/{CodeSigningConfigArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetCodeSigningConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetCodeSigningConfig - Arguments for method GetCodeSigningConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCodeSigningConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetCodeSigningConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCodeSigningConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $GetCodeSigningConfigResponse = $lambda->GetCodeSigningConfig(
      CodeSigningConfigArn => 'MyCodeSigningConfigArn',

    );

    # Results:
    my $CodeSigningConfig = $GetCodeSigningConfigResponse->CodeSigningConfig;

    # Returns a L<Paws::Lambda::GetCodeSigningConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetCodeSigningConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeSigningConfigArn => Str

The The Amazon Resource Name (ARN) of the code signing configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCodeSigningConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

