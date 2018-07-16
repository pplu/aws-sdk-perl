
package Paws::KinesisAnalytics::AddApplicationInput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has Input => (is => 'ro', isa => 'Paws::KinesisAnalytics::Input', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationInput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::AddApplicationInputResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::AddApplicationInput - Arguments for method AddApplicationInput on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationInput on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method AddApplicationInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationInput.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $AddApplicationInputResponse = $kinesisanalytics->AddApplicationInput(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      Input                       => {
        InputSchema => {
          RecordColumns => [
            {
              Name    => 'MyRecordColumnName',
              SqlType => 'MyRecordColumnSqlType',    # min: 1
              Mapping => 'MyRecordColumnMapping',    # OPTIONAL
            },
            ...
          ],                                         # min: 1, max: 1000
          RecordFormat => {
            RecordFormatType  => 'JSON',             # values: JSON, CSV
            MappingParameters => {
              CSVMappingParameters => {
                RecordColumnDelimiter => 'MyRecordColumnDelimiter',    # min: 1
                RecordRowDelimiter    => 'MyRecordRowDelimiter',       # min: 1

              },    # OPTIONAL
              JSONMappingParameters => {
                RecordRowPath => 'MyRecordRowPath',    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
          },
          RecordEncoding => 'MyRecordEncoding',    # OPTIONAL
        },
        NamePrefix       => 'MyInAppStreamName',    # min: 1, max: 32
        InputParallelism => {
          Count => 1,                               # min: 1, max: 64; OPTIONAL
        },    # OPTIONAL
        InputProcessingConfiguration => {
          InputLambdaProcessor => {
            ResourceARN => 'MyResourceARN',    # min: 1, max: 2048
            RoleARN     => 'MyRoleARN',        # min: 1, max: 2048

          },

        },    # OPTIONAL
        KinesisFirehoseInput => {
          ResourceARN => 'MyResourceARN',    # min: 1, max: 2048
          RoleARN     => 'MyRoleARN',        # min: 1, max: 2048

        },    # OPTIONAL
        KinesisStreamsInput => {
          ResourceARN => 'MyResourceARN',    # min: 1, max: 2048
          RoleARN     => 'MyRoleARN',        # min: 1, max: 2048

        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/AddApplicationInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of your existing Amazon Kinesis Analytics application to which you
want to add the streaming source.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

Current version of your Amazon Kinesis Analytics application. You can
use the DescribeApplication operation to find the current application
version.



=head2 B<REQUIRED> Input => L<Paws::KinesisAnalytics::Input>

The Input to add.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationInput in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

