
package Paws::KinesisAnalyticsV2::ListApplications;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::ListApplicationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplications - Arguments for method ListApplications on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $ListApplicationsResponse = $kinesisanalytics->ListApplications(
      Limit     => 1,                      # OPTIONAL
      NextToken => 'MyApplicationName',    # OPTIONAL
    );

    # Results:
    my $ApplicationSummaries = $ListApplicationsResponse->ApplicationSummaries;
    my $NextToken            = $ListApplicationsResponse->NextToken;

    # Returns a L<Paws::KinesisAnalyticsV2::ListApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/ListApplications>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of applications to list.



=head2 NextToken => Str

If a previous command returned a pagination token, pass it into this
value to retrieve the next set of results. For more information about
pagination, see Using the AWS Command Line Interface's Pagination
Options
(https://docs.aws.amazon.com/cli/latest/userguide/pagination.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

