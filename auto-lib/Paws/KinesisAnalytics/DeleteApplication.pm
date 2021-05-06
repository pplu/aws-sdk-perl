
package Paws::KinesisAnalytics::DeleteApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CreateTimestamp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::DeleteApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DeleteApplication - Arguments for method DeleteApplication on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplication on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method DeleteApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplication.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $DeleteApplicationResponse = $kinesisanalytics->DeleteApplication(
      ApplicationName => 'MyApplicationName',
      CreateTimestamp => '1970-01-01T01:00:00',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of the Amazon Kinesis Analytics application to delete.



=head2 B<REQUIRED> CreateTimestamp => Str

You can use the C<DescribeApplication> operation to get this value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplication in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

