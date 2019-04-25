
package Paws::KinesisAnalytics::DeleteApplicationReferenceDataSource;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has ReferenceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationReferenceDataSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::DeleteApplicationReferenceDataSourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DeleteApplicationReferenceDataSource - Arguments for method DeleteApplicationReferenceDataSource on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationReferenceDataSource on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method DeleteApplicationReferenceDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationReferenceDataSource.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $DeleteApplicationReferenceDataSourceResponse =
      $kinesisanalytics->DeleteApplicationReferenceDataSource(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      ReferenceId                 => 'MyId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplicationReferenceDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of an existing application.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

Version of the application. You can use the DescribeApplication
operation to get the current application version. If the version
specified is not the current version, the
C<ConcurrentModificationException> is returned.



=head2 B<REQUIRED> ReferenceId => Str

ID of the reference data source. When you add a reference data source
to your application using the AddApplicationReferenceDataSource, Amazon
Kinesis Analytics assigns an ID. You can use the DescribeApplication
operation to get the reference ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationReferenceDataSource in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

