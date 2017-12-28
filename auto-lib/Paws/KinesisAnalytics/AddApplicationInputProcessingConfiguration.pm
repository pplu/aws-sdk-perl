
package Paws::KinesisAnalytics::AddApplicationInputProcessingConfiguration;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has InputId => (is => 'ro', isa => 'Str', required => 1);
  has InputProcessingConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalytics::InputProcessingConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationInputProcessingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::AddApplicationInputProcessingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::AddApplicationInputProcessingConfiguration - Arguments for method AddApplicationInputProcessingConfiguration on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationInputProcessingConfiguration on the 
Amazon Kinesis Analytics service. Use the attributes of this class
as arguments to method AddApplicationInputProcessingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationInputProcessingConfiguration.

As an example:

  $service_obj->AddApplicationInputProcessingConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of the application to which you want to add the input processing
configuration.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

Version of the application to which you want to add the input
processing configuration. You can use the DescribeApplication operation
to get the current application version. If the version specified is not
the current version, the C<ConcurrentModificationException> is
returned.



=head2 B<REQUIRED> InputId => Str

The ID of the input configuration to add the input processing
configuration to. You can get a list of the input IDs for an
application using the DescribeApplication operation.



=head2 B<REQUIRED> InputProcessingConfiguration => L<Paws::KinesisAnalytics::InputProcessingConfiguration>

The InputProcessingConfiguration to add to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationInputProcessingConfiguration in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

