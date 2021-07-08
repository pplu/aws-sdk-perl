
package Paws::IVS::CreateRecordingConfiguration;
  use Moose;
  has DestinationConfiguration => (is => 'ro', isa => 'Paws::IVS::DestinationConfiguration', traits => ['NameInRequest'], request_name => 'destinationConfiguration', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecordingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateRecordingConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::CreateRecordingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateRecordingConfiguration - Arguments for method CreateRecordingConfiguration on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecordingConfiguration on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method CreateRecordingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecordingConfiguration.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $CreateRecordingConfigurationResponse =
      $ivs->CreateRecordingConfiguration(
      DestinationConfiguration => {
        S3 => {
          BucketName => 'MyS3DestinationBucketName',    # min: 3, max: 63

        },    # OPTIONAL
      },
      Name => 'MyRecordingConfigurationName',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $RecordingConfiguration =
      $CreateRecordingConfigurationResponse->RecordingConfiguration;

    # Returns a L<Paws::IVS::CreateRecordingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/CreateRecordingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationConfiguration => L<Paws::IVS::DestinationConfiguration>

A complex type that contains a destination configuration for where
recorded video will be stored.



=head2 Name => Str

An arbitrary string (a nickname) that helps the customer identify that
resource. The value does not need to be unique.



=head2 Tags => L<Paws::IVS::Tags>

Array of 1-50 maps, each of the form C<string:string (key:value)>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecordingConfiguration in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

