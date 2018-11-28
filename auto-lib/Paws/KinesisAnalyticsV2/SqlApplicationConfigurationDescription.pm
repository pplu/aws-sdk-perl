package Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription;
  use Moose;
  has InputDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::InputDescription]');
  has OutputDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::OutputDescription]');
  has ReferenceDataSourceDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription object:

  $service_obj->Method(Att1 => { InputDescriptions => $value, ..., ReferenceDataSourceDescriptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InputDescriptions

=head1 DESCRIPTION

Describes the inputs, outputs, and reference data sources for an
SQL-based Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 InputDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::InputDescription>]

  The array of InputDescription objects describing the input streams used
by the application.


=head2 OutputDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::OutputDescription>]

  The array of OutputDescription objects describing the destination
streams used by the application.


=head2 ReferenceDataSourceDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription>]

  The array of ReferenceDataSourceDescription objects describing the
reference data sources used by the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

