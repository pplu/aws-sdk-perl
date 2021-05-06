
package Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfiguration;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has VpcConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVpcConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfiguration - Arguments for method DeleteApplicationVpcConfiguration on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationVpcConfiguration on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method DeleteApplicationVpcConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationVpcConfiguration.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $DeleteApplicationVpcConfigurationResponse =
      $kinesisanalytics->DeleteApplicationVpcConfiguration(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      VpcConfigurationId          => 'MyId',

      );

    # Results:
    my $ApplicationARN =
      $DeleteApplicationVpcConfigurationResponse->ApplicationARN;
    my $ApplicationVersionId =
      $DeleteApplicationVpcConfigurationResponse->ApplicationVersionId;

# Returns a L<Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplicationVpcConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an existing application.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The current application version ID. You can retrieve the application
version ID using DescribeApplication.



=head2 B<REQUIRED> VpcConfigurationId => Str

The ID of the VPC configuration to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationVpcConfiguration in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

