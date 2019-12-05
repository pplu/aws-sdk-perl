
package Paws::KinesisAnalyticsV2::AddApplicationVpcConfiguration;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has VpcConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::VpcConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationVpcConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::AddApplicationVpcConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationVpcConfiguration - Arguments for method AddApplicationVpcConfiguration on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationVpcConfiguration on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method AddApplicationVpcConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationVpcConfiguration.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $AddApplicationVpcConfigurationResponse =
      $kinesisanalytics->AddApplicationVpcConfiguration(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      VpcConfiguration            => {
        SecurityGroupIds => [ 'MySecurityGroupId', ... ],    # min: 1, max: 5
        SubnetIds        => [ 'MySubnetId',        ... ],    # min: 1, max: 16

      },

      );

    # Results:
    my $ApplicationARN =
      $AddApplicationVpcConfigurationResponse->ApplicationARN;
    my $ApplicationVersionId =
      $AddApplicationVpcConfigurationResponse->ApplicationVersionId;
    my $VpcConfigurationDescription =
      $AddApplicationVpcConfigurationResponse->VpcConfigurationDescription;

# Returns a L<Paws::KinesisAnalyticsV2::AddApplicationVpcConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/AddApplicationVpcConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an existing application.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The version of the application to which you want to add the input
processing configuration. You can use the DescribeApplication operation
to get the current application version. If the version specified is not
the current version, the C<ConcurrentModificationException> is
returned.



=head2 B<REQUIRED> VpcConfiguration => L<Paws::KinesisAnalyticsV2::VpcConfiguration>

Description of the VPC to add to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationVpcConfiguration in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

