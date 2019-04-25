
package Paws::KinesisAnalytics::DeleteApplicationOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has OutputId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationOutput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::DeleteApplicationOutputResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DeleteApplicationOutput - Arguments for method DeleteApplicationOutput on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationOutput on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method DeleteApplicationOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationOutput.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $DeleteApplicationOutputResponse =
      $kinesisanalytics->DeleteApplicationOutput(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      OutputId                    => 'MyId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplicationOutput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Amazon Kinesis Analytics application name.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

Amazon Kinesis Analytics application version. You can use the
DescribeApplication operation to get the current application version.
If the version specified is not the current version, the
C<ConcurrentModificationException> is returned.



=head2 B<REQUIRED> OutputId => Str

The ID of the configuration to delete. Each output configuration that
is added to the application, either when the application is created or
later using the AddApplicationOutput operation, has a unique ID. You
need to provide the ID to uniquely identify the output configuration
that you want to delete from the application configuration. You can use
the DescribeApplication operation to get the specific C<OutputId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationOutput in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

