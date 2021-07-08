
package Paws::Macie2::PutClassificationExportConfiguration;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Macie2::ClassificationExportConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutClassificationExportConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/classification-export-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::PutClassificationExportConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::PutClassificationExportConfiguration - Arguments for method PutClassificationExportConfiguration on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutClassificationExportConfiguration on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method PutClassificationExportConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutClassificationExportConfiguration.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $PutClassificationExportConfigurationResponse =
      $macie2->PutClassificationExportConfiguration(
      Configuration => {
        S3Destination => {
          BucketName => 'My__string',
          KmsKeyArn  => 'My__string',
          KeyPrefix  => 'My__string',
        },    # OPTIONAL
      },

      );

    # Results:
    my $Configuration =
      $PutClassificationExportConfigurationResponse->Configuration;

# Returns a L<Paws::Macie2::PutClassificationExportConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/PutClassificationExportConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::Macie2::ClassificationExportConfiguration>

The location to store data classification results in, and the
encryption settings to use when storing results in that location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutClassificationExportConfiguration in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

