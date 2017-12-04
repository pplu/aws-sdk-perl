package Paws::KinesisAnalytics::ApplicationUpdate;
  use Moose;
  has ApplicationCodeUpdate => (is => 'ro', isa => 'Str');
  has CloudWatchLoggingOptionUpdates => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate]');
  has InputUpdates => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::InputUpdate]');
  has OutputUpdates => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::OutputUpdate]');
  has ReferenceDataSourceUpdates => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::ReferenceDataSourceUpdate]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ApplicationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::ApplicationUpdate object:

  $service_obj->Method(Att1 => { ApplicationCodeUpdate => $value, ..., ReferenceDataSourceUpdates => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::ApplicationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationCodeUpdate

=head1 DESCRIPTION

Describes updates to apply to an existing Amazon Kinesis Analytics
application.

=head1 ATTRIBUTES


=head2 ApplicationCodeUpdate => Str

  Describes application code updates.


=head2 CloudWatchLoggingOptionUpdates => ArrayRef[L<Paws::KinesisAnalytics::CloudWatchLoggingOptionUpdate>]

  Describes application CloudWatch logging option updates.


=head2 InputUpdates => ArrayRef[L<Paws::KinesisAnalytics::InputUpdate>]

  Describes application input configuration updates.


=head2 OutputUpdates => ArrayRef[L<Paws::KinesisAnalytics::OutputUpdate>]

  Describes application output configuration updates.


=head2 ReferenceDataSourceUpdates => ArrayRef[L<Paws::KinesisAnalytics::ReferenceDataSourceUpdate>]

  Describes application reference data source updates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

