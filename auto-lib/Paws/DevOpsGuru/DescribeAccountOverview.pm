
package Paws::DevOpsGuru::DescribeAccountOverview;
  use Moose;
  has FromTime => (is => 'ro', isa => 'Str', required => 1);
  has ToTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountOverview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/overview');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeAccountOverviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeAccountOverview - Arguments for method DescribeAccountOverview on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountOverview on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeAccountOverview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountOverview.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeAccountOverviewResponse =
      $devops -guru->DescribeAccountOverview(
      FromTime => '1970-01-01T01:00:00',
      ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $MeanTimeToRecoverInMilliseconds =
      $DescribeAccountOverviewResponse->MeanTimeToRecoverInMilliseconds;
    my $ProactiveInsights = $DescribeAccountOverviewResponse->ProactiveInsights;
    my $ReactiveInsights  = $DescribeAccountOverviewResponse->ReactiveInsights;

    # Returns a L<Paws::DevOpsGuru::DescribeAccountOverviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeAccountOverview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FromTime => Str

The start of the time range passed in. The start time granularity is at
the day level. The floor of the start time is used. Returned
information occurred after this day.



=head2 ToTime => Str

The end of the time range passed in. The start time granularity is at
the day level. The floor of the start time is used. Returned
information occurred before this day. If this is not specified, then
the current day is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountOverview in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

