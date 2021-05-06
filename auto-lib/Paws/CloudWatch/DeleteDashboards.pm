
package Paws::CloudWatch::DeleteDashboards;
  use Moose;
  has DashboardNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDashboards');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::DeleteDashboardsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDashboardsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DeleteDashboards - Arguments for method DeleteDashboards on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDashboards on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DeleteDashboards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDashboards.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DeleteDashboardsOutput = $monitoring->DeleteDashboards(
      DashboardNames => [ 'MyDashboardName', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DeleteDashboards>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardNames => ArrayRef[Str|Undef]

The dashboards to be deleted. This parameter is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDashboards in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

