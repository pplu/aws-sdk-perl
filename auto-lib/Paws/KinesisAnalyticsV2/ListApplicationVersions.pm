
package Paws::KinesisAnalyticsV2::ListApplicationVersions;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::ListApplicationVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationVersions - Arguments for method ListApplicationVersions on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationVersions on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method ListApplicationVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationVersions.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $ListApplicationVersionsResponse =
      $kinesisanalytics->ListApplicationVersions(
      ApplicationName => 'MyApplicationName',
      Limit           => 1,                     # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      );

    # Results:
    my $ApplicationVersionSummaries =
      $ListApplicationVersionsResponse->ApplicationVersionSummaries;
    my $NextToken = $ListApplicationVersionsResponse->NextToken;

# Returns a L<Paws::KinesisAnalyticsV2::ListApplicationVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/ListApplicationVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application for which you want to list all versions.



=head2 Limit => Int

The maximum number of versions to list in this invocation of the
operation.



=head2 NextToken => Str

If a previous invocation of this operation returned a pagination token,
pass it into this value to retrieve the next set of results. For more
information about pagination, see Using the AWS Command Line
Interface's Pagination Options
(https://docs.aws.amazon.com/cli/latest/userguide/pagination.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationVersions in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

